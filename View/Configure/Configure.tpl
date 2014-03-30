<div class="row">
  <section class="col-md-6">
    <section>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Commands Configuration</h3>
        </div>
        <div class="panel-body">
          <p>Memcached commands API used by phpMemcacheAdmin</p>
          <p>
            <a class="green" href="http://pecl.php.net/package/memcache">PECL Memcache</a> was
            <?php echo (class_exists('Memcache', false)) ? '' : ' not '; ?> found on this server
          </p>
          <p>
            <a class="green" href="http://pecl.php.net/package/memcached">PECL Memcached</a> was
            <?php echo (class_exists('Memcached', false)) ? '' : ' not '; ?> found on this server
          </p>
          <hr/>
          <form class="form-horizontal" role="form" method="post" action="configure.php?request_write=commands">
            <div class="form-group">
              <label for="stats_api" class="col-sm-2 control-label">Stats</label>
              <div class="col-sm-10">
                <?php echo Library_HTML_Components::apiList($_ini->get('stats_api'), 'stats_api', 'form-control'); ?>
              </div>
            </div>
            <div class="form-group">
                <label for="slabs_api" class="col-sm-2 control-label">Slabs</label>
                <div class="col-sm-10">
                  <?php echo Library_HTML_Components::apiList($_ini->get('slabs_api'), 'slabs_api', 'form-control'); ?>
                </div>
            </div>
            <div class="form-group">
                <label for="items_api" class="col-sm-2 control-label">Items</label>
                <div class="col-sm-10"><?php echo Library_HTML_Components::apiList($_ini->get('items_api'), 'items_api', 'form-control'); ?></div>
            </div>
            <div class="form-group">
                <label for="get_api" class="col-sm-2 control-label">Get</label>
                <div class="col-sm-10"><?php echo Library_HTML_Components::apiList($_ini->get('get_api'), 'get_api', 'form-control'); ?></div>
            </div>
            <div class="form-group">
                <label for="set_api" class="col-sm-2 control-label">Set</label>
                <div class="col-sm-10"><?php echo Library_HTML_Components::apiList($_ini->get('set_api'), 'set_api', 'form-control'); ?></div>
            </div>
            <div class="form-group">
                <label for="delete_api" class="col-sm-2 control-label">Delete</label>
                <div class="col-sm-10"><?php echo Library_HTML_Components::apiList($_ini->get('delete_api'), 'delete_api', 'form-control'); ?></div>
            </div>
            <div class="form-group">
                <label for="flush_all_api" class="col-sm-2 control-label">Flush All</label>
                <div class="col-sm-10"><?php echo Library_HTML_Components::apiList($_ini->get('flush_all_api'), 'flush_all_api', 'form-control'); ?></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Save API Configuration</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>

    <section>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Live Stats Configuration</h3>
        </div>
        <div class="panel-body">
          <p>Alert &amp; refresh rate for Live Stats</p>
          <hr>
          <form class="form-horizontal" role="form" method="post" action="configure.php?request_write=live_stats">
            <div class="form-group">
                <label for="refresh_rate" class="col-sm-2 control-label">Refresh Rate in sec</label>
                <div class="col-sm-10">
                  <input type="text" name="refresh_rate" value="<?php echo $_ini->get('refresh_rate'); ?>" class="form-control" />
                </div>
            </div>

            <div class="form-group">
                <label for="memory_alert" class="col-sm-2 control-label">Memory Alert</label>
                <div class="col-sm-10">
                  <input type="text" name="memory_alert" value="<?php echo $_ini->get('memory_alert'); ?>" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="hit_rate_alert" class="col-sm-2 control-label">Hit Rate Alert</label>
                <div class="col-sm-10">
                  <input type="text" name="hit_rate_alert" value="<?php echo $_ini->get('hit_rate_alert'); ?>" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="eviction_alert" class="col-sm-2 control-label">Eviction Alert</label>
                <div class="col-sm-10">
                  <input type="text" name="eviction_alert" value="<?php echo $_ini->get('eviction_alert'); ?>" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="file_path" class="col-sm-2 control-label">Temp Path</label>
                <div class="col-sm-10">
                  <input type="text" name="file_path" value="<?php echo $_ini->get('file_path'); ?>" class="form-control" />
                </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Save Live Configuration</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>

    <section>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Miscellaneous Configuration</h3>
        </div>
        <div class="panel-body">
          <p>Server connection timeout &amp; miscellaneous</p>
          <hr/>
          <form class="form-horizontal" role="form" method="post" action="configure.php?request_write=miscellaneous">
            <div class="form-group">
                <label for="connection_timeout" class="col-sm-2 control-label">Timeout in sec</label>
                <div class="col-sm-10">
                <input type="text" name="connection_timeout" value="<?php echo $_ini->get('connection_timeout'); ?>" class="form-control"/></div>
            </div>
            <div class="form-group">
                <label for="max_item_dump" class="col-sm-2 control-label">Max Items</label>
                <div class="col-sm-10">
                <input type="text" name="max_item_dump" value="<?php echo $_ini->get('max_item_dump'); ?>" class="form-control" /></div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Save API Configuration</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </section>

  <section class="col-md-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Server List</h3>
      </div>
      <div class="panel-body">
        <p>Servers list used by phpMemcacheAdmin</p>
        <p>The server name will be filled by default with hostname:port</p>
        <hr/>
        <form class="form-horizontal" role="form" method="post" action="configure.php?request_write=servers">
          <div id="server_form">
            <?php
              # Initializing variables
              $server_id = 0;
              $cluster_id = 0;

              # Looking into each cluster
              foreach ($_ini->get('servers') as $cluster => $servers) {
                $cluster_id++;
            ?>
            <div id="cluster_<?php echo $cluster_id; ?>">
              <div class="form-group">
                <label for="cluster[<?php echo $cluster_id; ?>]" class="col-sm-2 control-label">Cluster</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="cluster[<?php echo $cluster_id; ?>]" value="<?php echo $cluster; ?>"/>
                </div>
              </div>
              <div class="row">
                  <div class="col-md-4">Name (Optional)</div>
                  <div class="col-md-3">IP/Hostname</div>
                  <div class="col-md-2">Port</div>
              </div>
              <?php
                foreach ($servers as $name => $server) :
                  $server_id++;
              ?>
              <div class="row" id="server_<?php echo $server_id; ?>">
                <div class="col-md-4">
                  <input type="text" class="form-control" name="server[<?php echo $cluster_id; ?>][<?php echo $server_id; ?>][name]" value="<?php echo $name; ?>" id="name_<?php echo $server_id; ?>" onchange="nameOnChange(<?php echo $server_id; ?>)"/>
                </div>
                <div class="col-md-3">
                  <input type="text" class="form-control col-xs-4" name="server[<?php echo $cluster_id; ?>][<?php echo $server_id; ?>][hostname]" value="<?php echo $server['hostname']; ?>" id="host_<?php echo $server_id; ?>"
                  <?php # Custom name
                  if ($name == $server['hostname'] . ':' . $server['port']) { ?>
                    onchange="hostOrPortOnChange(<?php echo $server_id; ?>)" onKeyUp="hostOrPortOnChange(<?php echo $server_id; ?>)"
                  <?php } ?>onfocus="hostOnFocus($(this));" onblur="hostOnBlur($(this));"/>
                </div>
                <div class="col-md-2">
                  <input type="text" class="form-control col-xs-4" name="server[<?php echo $cluster_id; ?>][<?php echo $server_id; ?>][port]" value="<?php echo $server['port']; ?>" id="port_<?php echo $server_id; ?>"
                  <?php # Custom name
                  if ($name == $server['hostname'] . ':' . $server['port']) { ?>
                    onchange="hostOrPortOnChange(<?php echo $server_id; ?>)" onKeyUp="hostOrPortOnChange(<?php echo $server_id; ?>)"
                  <?php } ?> onfocus="portOnFocus($(this));" onblur="portOnBlur($(this));"/>
                </div>
                <div class="form-group">
                  <a class="btn btn-danger btn-sm" href="#" onclick="$('#server_<?php echo $server_id; ?>').remove();">Delete</a>
                </div>
              </div>
              <?php endforeach; ?>
              <div class="form-group" id="cluster_<?php echo $cluster_id; ?>_commands">
                <div class="col-sm-offset-2 col-sm-10">
                  <a href="javascript:addServer(<?php echo $cluster_id; ?>)" class="btn btn-default" role="button">Add New Server to Cluster</a>
                  <a class="btn btn-danger" role="button" href="#" onclick="$('#cluster_<?php echo $cluster_id; ?>').remove();">Delete Cluster</a>
                </div>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <a href="javascript:addCluster()" class="btn btn-default" role="button">Add New Cluster</a>
              <button type="submit" class="btn btn-success">Save Servers Configuration</button>
            </div>
          </div>
        </form>
        <script type="text/javascript">
            server_id = <?php echo $server_id; ?>;
            cluster_id = <?php echo $cluster_id; ?>;
        </script>
      </div>
      <div class="panel-footer">
        For more information about configuring phpMemcachedAdmin, see installation guide
        <a href="http://code.google.com/p/phpmemcacheadmin/wiki/InstallationGuide" target="_blank">here</a>
      </div>
    </div>
  </section>
</div>
