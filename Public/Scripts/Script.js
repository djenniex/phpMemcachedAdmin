$(function(){ // on DOM ready
   $("#slabs").table({
      idprefix: "co-",
      persist: "persist",
      checkContainer: "#display"
   });
});

function changeServer(obj) {
	if (obj.options[obj.selectedIndex].value != '') {
		window.location = 'index.php?server='
				+ obj.options[obj.selectedIndex].value;
	} else {
		window.location = 'index.php';
	}
}
function changeCluster(obj) {
	if (obj.options[obj.selectedIndex].value != '') {
		window.location = 'stats.php?cluster='
				+ obj.options[obj.selectedIndex].value;
	} else {
		window.location = 'stats.php';
	}
}

function changeCommand(obj) {
	$('#request_key').val('');
	$('#request_duration').val('');
	$('#request_data').val('');
	$('#request_delay').val('');
	$('#request_value').val('');
	var command = obj.options[obj.selectedIndex].value;
	var div_key = $('#div_key');
	var div_duration = $('#div_duration');
	var div_data = $('#div_data');
	var div_delay = $('#div_delay');
	var div_value = $('#div_value');
	if (command == 'get' || command == 'delete') {
		div_key.show();
		div_duration.hide();
		div_data.hide();
		div_delay.hide();
		div_value.hide();
	} else if (command == 'set') {
		div_key.show();
		div_duration.show();
		div_data.show();
		div_delay.hide();
		div_value.hide();
	} else if (command == 'flush_all') {
		div_key.hide();
		div_duration.hide();
		div_data.hide();
		div_delay.show();
		div_value.hide();
	} else if (command == 'increment' || command == 'decrement') {
		div_key.show();
		div_duration.hide();
		div_data.hide();
		div_delay.hide();
		div_value.show();
	} else {
		div_key.hide();
		div_duration.hide();
		div_data.hide();
		div_delay.hide();
		div_value.hide();
	}
}
function executeCommand(target, params) {
  if (params != null) {
    $.get('commands.php?' + params)
    .done(function(data) {
      var object = $(target);
      object.append(data).scrollTop(object.height());
    });
  }

  if ($('#request_command').val() != '') {
    $.get('commands.php', {
      request_command: $('#request_command').val(),
      request_key: $('#request_key').val(),
      request_duration: $('#request_duration').val(),
      request_data: $('#request_data').val(),
      request_delay: $('#request_delay').val(),
      request_value: $('#request_value').val(),
      request_server: $('#request_server').val(),
      request_api: $('#request_api').val()
    })
    .done(function(data) {
      var object = $(target);
      object.append(data).scrollTop(object.height());
    });
    return;
  }
}
function searchKey(target) {
  if ($('#search_key').val() != '') {
    $.get('commands.php', {
      request_command: 'search',
      request_key: $('#search_key').val(),
      request_server: $('#search_server').val()
    })
    .done(function(data) {
      var object = $(target);
      object.append(data).scrollTop(object.height());
    });
  }
}
function executeTelnet(target) {
  $.get('commands.php', {
    request_command: 'telnet',
    request_telnet: $('#request_telnet').val(),
    request_server: $('#request_telnet_server').val()
  })
  .done(function(data) {
    var object = $(target);
    object.append(data).scrollTop(object.height());
  });
}
function execute(url, target, append) {
  $.get(url, function(data) {
    var object = $(target);
    if (append == true) {
      object.append(data);
    } else {
      object.empty().html(data);
    }
    object.scrollTop(object.height());
  });
}
// }
var server_id = 1;
var cluster_id = 1;
function addCluster() {
  cluster_id++;
  var clusterRow = $('<div id="cluster_' + cluster_id +'"></div>');
  clusterRow.html('<div class="form-group"><label for="cluster[' + cluster_id + ']" class="col-sm-2 control-label">Cluster</label><div class="col-sm-10"><input type="text" class="form-control" name="cluster[' + cluster_id + ']" value=""></div></div>'
    + '<div class="row"><div class="col-md-4">Name (Optional)</div><div class="col-md-3">IP/Hostname</div><div class="col-md-2">Port</div></div>'
    + '<div class="form-group" id="cluster_' + cluster_id + '_commands"><div class="col-sm-offset-2 col-sm-10"><a href="javascript:addServer(' + cluster_id + ')" class="btn btn-default" role="button">Add New Server to Cluster</a><a class="btn btn-danger" role="button" href="#" onclick="$(\'#cluster_' + cluster_id + '\').remove();">Delete Cluster</a></div></div>');
  $('#server_form').append(clusterRow);
  addServer(cluster_id);
}
function addServer(current_cluster_id) {
  server_id++;
  var serverRow = $('<div class="row" id="server_' + server_id + '"></div>');
  serverRow.html('<div class="col-md-4"><input type="text" class="form-control" name="server[' + current_cluster_id + '][' + server_id + '][name]" value="" id="name_' + server_id + '" onchange="nameOnChange(' + server_id + ')"/></div>'
    + '<div class="col-md-3"><input type="text" class="form-control col-xs-4" name="server[' + current_cluster_id + '][' + server_id + '][hostname]" value="hostname" id="host_' + server_id + '" onchange="hostOrPortOnChange(' + server_id + ')" onKeyUp="hostOrPortOnChange(' + server_id + ')" onfocus="hostOnFocus($(this));" onblur="hostOnBlur($(this));"/></div>'
    + '<div class="col-md-2"><input type="text" class="form-control col-xs-4" name="server[' + current_cluster_id + '][' + server_id + '][port]" value="port" id="port_' + server_id + '" onchange="hostOrPortOnChange(' + server_id + ')" onKeyUp="hostOrPortOnChange(' + server_id + ')" onfocus="portOnFocus($(this));" onblur="portOnBlur($(this));"></div>'
    + '<div class="form-group"><a class="btn btn-danger btn-sm" href="#" onclick="$(\#server_' + server_id + '\').remove();">Delete</a></div>');
  serverRow.insertBefore($('#cluster_' + current_cluster_id + '_commands'));
}
function nameOnChange(target) {
	portObject = $('#port_' + target);
	portObject.setAttribute("onchange", "return false;");
	hostObject = $('#host_' + target);
	hostObject.setAttribute("onchange", "return false;");
}
function hostOnFocus(object) {
	if (object.val() == 'hostname') {
		object.val('');
	}
}
function hostOnBlur(object) {
	if (object.val() == '') {
		object.val('hostname');
	}
}
function hostOnChange(object) {
	if (object.val() == '') {
		object.val('port');
	}
}
function portOnFocus(object) {
	if (object.val() == 'port') {
		object.val('');
	}
}
function portOnBlur(object) {
	if (object.val() == '') {
		object.val('port');
	}
}
function hostOrPortOnChange(target) {
	nameObject = $('#name_' + target);
	hostObject = $('#host_' + target);
	portObject = $('#port_' + target);
	if ((nameObject.val() == '') || ((nameObject.val() != hostObject.val() + ':' + portObject.val()))) {
		nameObject.val(hostObject.val() + ':' + portObject.val());
	}
}
function ajax(url, target) {
	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
		req.onreadystatechange = function() {
			ajaxDone(target);
		};
		req.open("GET", url, true);
		req.send(null);
	} else if (window.ActiveXObject) {
		req = new ActiveXObject('Microsoft.XMLHTTP');
		if (req) {
			req.onreadystatechange = function() {
				ajaxDone(target);
			};
			req.open("GET", url, true);
			req.send();
		}
	}
	setTimeout("ajax(page, 'stats')", timeout);
}
function ajaxDone(target) {
	if (req.readyState == 4) {
		if (req.status == 200 || req.status == 304) {
			$(target).html(req.responseText);
		} else {
			$(target).html("Loading stats error : "
					+ req.statusText);
		}
	}
}
