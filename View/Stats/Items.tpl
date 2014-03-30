<section class="row">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Console</h3>
    </div>
    <div class="panel-body">
      <pre id="console" class="well well-lg pre-scrollable" style="font-size:11px;overflow:auto;min-height:80px;max-height:196px;">
        Click on an item's key below to see it's content here
      </pre>
    </div>
    <div class="panel-footer">
      <button class="btn btn-default" type="submit" onclick="$('#console').empty();">Clear Console</button>
      <button class="btn btn-default" id="hide" type="submit" onclick="$('#console').toggle();">Show/Hide Console</button>
    </div>
  </div>
</section>

<section class="row">
  Items in Slab <?php echo $_GET['slab']; ?>, only showing first <?php echo $_ini->get('max_item_dump'); ?> items
  <span class="pull-right">
    <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs">Back to Server Slabs</a>
  </span>
</section>

<table class="table table-striped">
  <thead>
    <tr>
      <th>Key</th>
      <th>Size</th>
      <th>Expiration</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($items as $key => $data): ?>
    <tr>
      <td>
        <a class="green item" style="" onclick="javascript:executeCommand('#console', 'request_key=<?php echo urlencode($key); ?>&amp;request_api=<?php echo $_ini->get('get_api'); ?>&amp;request_command=get&amp;request_server=<?php echo $_GET['server']; ?>');"><?php echo ((strlen($key) > 70) ? substr($key, 0, 70) . '[..]' : $key); ?></a>
      </td>
      <td>
        <?php echo Library_Data_Analysis::byteResize($data[0]); ?>
      </td>
      <td>
        <?php echo $data[1] == $infinite ? '&#8734;' : Library_Data_Analysis::uptime($data[1] - time()); ?>
      </td>
      <td>
        <a onclick="javascript:executeCommand('#console', 'request_key=<?php echo urlencode($key); ?>&amp;request_api=<?php echo $_ini->get('get_api'); ?>&amp;request_command=delete&amp;request_server=<?php echo $_GET['server']; ?>'); javascript:location.reload();">Delete Key</a>
      </td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>
