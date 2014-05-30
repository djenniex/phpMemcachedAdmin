<section class="row">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Console</h3>
    </div>
    <div class="panel-body">
      <pre id="console" class="well well-lg pre-scrollable console" style="font-size:11px;overflow:auto;min-height:180px;max-height:500px;"></pre>
    </div>
    <div class="panel-footer">
      <a class="btn btn-info btn-clear-console">Clear Console</a>
    </div>
  </div>
</section>

<section class="row">
  <section class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Execute Predefined Command</h3>
      </div>
      <div class="panel-body">
        <form class="form-horizontal" role="form" action="commands.php" onsubmit="return false">
          <p class="text-muted">Execute command on one or all memcached servers</p>
          <div class="form-group">
            <label for="request_command" class="col-sm-2 control-label">Command</label>
            <div class="col-sm-10">
              <select id="request_command" name="request_command" class="form-control" onchange="javascript:changeCommand(this);">
                <option value="">Choose a Command</option>
                <option value="get">get</option>
                <option value="set">set</option>
                <option value="delete">delete</option>
                <option value="increment">increment</option>
                <option value="decrement">decrement</option>
                <option value="flush_all">flush all</option>
              </select>
            </div>
          </div>
          <div id="div_key" class="form-group" style="display:none;">
            <label for="request_key" class="col-sm-2 control-label">Key</label>
            <div class="col-sm-10">
              <input id="request_key" name="request_key" class="form-control" />
            </div>
          </div>
          <div id="div_duration" class="form-group" style="display:none;">
            <label for="request_duration" class="col-sm-2 control-label">Duration</label>
            <div class="col-sm-10">
              <input id="request_duration" name="request_duration" class="form-control" />
            </div>
          </div>
          <div id="div_value" class="form-group" style="display:none;">
            <label for="request_value" class="col-sm-2 control-label">Value</label>
            <div class="col-sm-10">
              <input id="request_value" name="request_value" class="form-control" />
            </div>
          </div>
          <div id="div_data" class="form-group" style="display:none;">
            <label for="request_data" class="col-sm-2 control-label">Data</label>
            <div class="col-sm-10">
              <textarea id="request_data" name="request_data" class="form-control" rows="2" cols="2"></textarea>
            </div>
          </div>
          <div id="div_delay" class="form-group" style="display:none;">
            <label for="request_data" class="col-sm-2 control-label">Delay</label>
            <div class="col-sm-10">
              <input id="request_delay" name="request_delay" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label for="request_server" class="col-sm-2 control-label">Server</label>
            <div class="col-sm-10">
              <?php echo Library_HTML_Components::serverSelect('request_server', '', 'form-control'); ?>
            </div>
          </div>
          <div class="form-group">
            <label for="request_api" class="col-sm-2 control-label">API</label>
            <div class="col-sm-10">
              <?php echo Library_HTML_Components::apiList($_ini->get('get_api'), 'request_api', 'form-control'); ?>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <a type="submit" class="btn btn-default btn-execute-command">Execute Command</a>
            </div>
          </div>
        </form>
      </div>
      <div class="panel-footer">
        <p>Available commands :
            <ul>
              <li>get : retreive a key value</li>
              <li>set : set a key/value pair</li>
              <li>delete : delete a specific key</li>
              <li>increment : increment a numeric key value</li>
              <li>decrement : decrement a numeric key value</li>
              <li>flush all : flush a Memcached server</li>
            </ul>
          </p>
      </div>
    </div>
  </section>

  <section class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Execute Telnet Commands</h3>
      </div>
      <div class="panel-body">
        <p class="text-muted">Execute telnet command on one or all memcached servers</p>
        <div class="form-group">
          <label for="request_telnet" class="col-sm-2 control-label">Command</label>
          <div class="col-sm-10">
            <textarea id="request_telnet" name="request_telnet" class="form-control" rows="2" cols="2"></textarea>
          </div>
        </div>
        <div class="form-group">
          <label for="request_telnet_server" class="col-sm-2 control-label">Server</label>
          <div class="col-sm-10">
              <?php echo Library_HTML_Components::serverSelect('request_telnet_server', '', 'form-control'); ?>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <a type="submit" class="btn btn-default btn-execute-telnet">Execute Telnet Command</a>
          </div>
        </div>
      </div>
      <div class="panel-footer">
        <p>You can use this thing to execute any telnet command to any memcached server</p>
        <p>It will connect to the server, execute the command and return it in the console</p>
        <p>
          For more informations about memcached commands, see <a href="http://github.com/memcached/memcached/blob/master/doc/protocol.txt" target="_blank">memcached protocol</a>
        </p>
      </div>
    </div>
  </section>

  <section class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Search Key</h3>
      </div>
      <div class="panel-body">
        <p class="text-muted">Search for a key on one or all memcached servers</p>
        <div class="form-group">
          <label for="search_key" class="col-sm-2 control-label">Key</label>
          <div class="col-sm-10">
              <input id="search_key" name="search_key" class="form-control" />
          </div>
        </div>
        <div class="form-group">
        <label for="search_server" class="col-sm-2 control-label">Server</label>
        <div class="col-sm-10">
            <?php echo Library_HTML_Components::serverSelect('search_server', '', 'form-control'); ?>
        </div>
      </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="search-key" class="btn btn-default">Search Key</button>
          </div>
        </div>
      </div>
      <div class="panel-footer">
        <p class="text-danger">Warning !</p>
        <p>This thing is only for debuging issue, do not use it in a production environment as it can lock or impact your memcached servers performances.</p>
        <p>Also keep in mind that it does not list all keys. It lists keys up to a certain buffer size (1 or 2MB), and it list key that are expired.</p>
        <p>You can also use a PCRE regular expression</p>
      </div>
    </div>
  </section>
</section>
