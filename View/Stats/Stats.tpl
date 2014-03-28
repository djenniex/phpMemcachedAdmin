<section class="row">
  <section class="col-md-3">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Get Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['get_hits']); ?>
            [<?php echo $stats['get_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['get_misses']); ?>
            [<?php echo $stats['get_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo $stats['get_rate']; ?> Request/sec</div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Set Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right"><?php echo Library_Data_Analysis::hitResize($stats['cmd_set']); ?></div>
          Total
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo $stats['set_rate']; ?> Request/sec</div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Delete Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['delete_hits'])) ? Library_Data_Analysis::hitResize($stats['delete_hits']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['delete_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['delete_misses'])) ? Library_Data_Analysis::hitResize($stats['delete_misses']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['delete_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['delete_hits'])) ? $stats['delete_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Cas Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['cas_hits'])) ? Library_Data_Analysis::hitResize($stats['cas_hits']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['cas_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['cas_misses'])) ? Library_Data_Analysis::hitResize($stats['cas_misses']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['cas_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['cas_badval'])) ? Library_Data_Analysis::hitResize($stats['cas_badval']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['cas_badval_percent']; ?>%]
          </div>
          Bad Value
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['cas_hits'])) ? $stats['cas_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Increment Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['incr_hits'])) ? Library_Data_Analysis::hitResize($stats['incr_hits']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['incr_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['incr_misses'])) ? Library_Data_Analysis::hitResize($stats['incr_misses']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['incr_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['incr_hits'])) ? $stats['incr_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Decrement Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['decr_hits'])) ? Library_Data_Analysis::hitResize($stats['decr_hits']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['decr_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['decr_misses'])) ? Library_Data_Analysis::hitResize($stats['decr_misses']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['decr_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['decr_hits'])) ? $stats['decr_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Touch Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['touch_hits'])) ? Library_Data_Analysis::hitResize($stats['touch_hits']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['touch_hits_percent']; ?>%]
          </div>
          Hits
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['touch_misses'])) ? Library_Data_Analysis::hitResize($stats['touch_misses']) : 'N/A on ' . $stats['version']; ?>
            [<?php echo $stats['touch_misses_percent']; ?>%]
          </div>
          Miss
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['touch_hits'])) ? $stats['touch_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Flush Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['cmd_flush'])) ? Library_Data_Analysis::hitResize($stats['cmd_flush']) : 'N/A on ' . $stats['version']; ?></div>
          Total
        </li>
        <li class="list-group-item">
        <div class="pull-right"><?php echo (isset($stats['cmd_flush'])) ? $stats['flush_rate'] . ' Request/sec' : 'N/A on ' . $stats['version']; ?></div>
          Rate
        </li>
      </ul>
    </div>
  </section>

  <section class="col-md-6">
    <?php if ((isset($_GET['server'])) && ($_ini->server($_GET['server']))) : # Viewing a single server ?>
        <div class="header corner padding size-3cols" style="text-align:center;margin-top:10px;">
            <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs">See this Server Slabs Stats</a>
        </div>
    <?php endif; ?>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">
          <?php echo (isset($_GET['server'])) && ($_ini->server($_GET['server'])) ? 'Server' : 'Cluster'; ?> Stats
        </h3>
      </div>
      <ul class="list-group">
        <?php if ((isset($_GET['server'])) && ($_ini->server($_GET['server']))) : # Viewing a single server ?>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::uptime($stats['uptime']); ?>
          </div>
          <abbr title="Number of secs since the server started">Uptime</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo date('F j, Y, g:i a T', $stats['time']); ?>
          </div>
          <abbr title="current UNIX time according to the server">Time</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo $stats['version']; ?>
          </div>
          <abbr title="Version string of this server">Memcached Version</abbr>
        </li>
        <?php endif; ?>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo $stats['curr_connections']; ?>
          </div>
          <abbr title="Number of open connections">Curr Connections</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['total_connections']); ?>
          </div>
          <abbr title="Total number of connections opened since the server started running">Total Connections</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['listen_disabled_num'])) ? Library_Data_Analysis::hitResize($stats['listen_disabled_num']) : 'N/A on ' . $stats['version']; ?></div>
          Max Connections Errors
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['curr_items']); ?>
          </div>
          <abbr title="Current number of items stored">Current Items</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['total_items']); ?>
          </div>
          <abbr title="Total number of items stored since the server started">Total Items</abbr>
        </li>
        <?php if ((isset($_GET['server'])) && ($_ini->server($_GET['server']))) : # Viewing a single server ?>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($settings['oldest'])) ? Library_Data_Analysis::uptime($settings['oldest']) : 'N/A on ' . $stats['version']; ?>
          </div>
          <abbr title="Age of the oldest honored object">Oldest Item</abbr>
        </li>
        <?php endif; ?>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">
          Eviction &amp; Reclaimed Stats
        </h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::hitResize($stats['evictions']); ?>
          </div>
          <abbr title="Number of valid items removed from cache to free memory for new items">Items Eviction</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo $stats['eviction_rate']; ?> Eviction/sec
          </div>
          Rate
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['reclaimed'])) ? Library_Data_Analysis::hitResize($stats['reclaimed']) : 'N/A on ' . $stats['version']; ?>
          </div>
          <abbr title="Number of times an entry was stored using an expired entry">Reclaimed</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['reclaimed'])) ? $stats['reclaimed_rate'] . ' Reclaimed/sec' : 'N/A on ' . $stats['version']; ?>
          </div>
          Reclaimed Rate
        </li>

        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['expired_unfetched'])) ? Library_Data_Analysis::hitResize($stats['expired_unfetched']) : 'N/A on ' . $stats['version']; ?>
          </div>
          <abbr title="Items pulled from LRU that were never touched by get/incr/append/etc before expiring">Expired unfetched</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['evicted_unfetched'])) ? Library_Data_Analysis::hitResize($stats['evicted_unfetched']) : 'N/A on ' . $stats['version']; ?>
          </div>
          <abbr title="Items evicted from LRU that were never touched by get/incr/append/etc">Evicted unfetched</abbr>
        </li>
      </ul>
    </div>

    <?php if ((isset($_GET['server'])) && ($_ini->server($_GET['server']))) : ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">
          Server Configuration
        </h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php
              # Northscale/Membase server specific
              if (isset($stats['accepting_conns'])) :
                  echo $stats['accepting_conns'] ? 'Yes' : 'No';
              else :
                  echo 'N/A on ' . $stats['version'];
              endif;
            ?>
          </div>
          <abbr title="Whether the server is accepting connection or not">Accepting Connections</abbr>
        </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['maxbytes'])) ? Library_Data_Analysis::byteResize($settings['maxbytes']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Maximum number of bytes allowed in this cache">Max Bytes</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['maxconns'])) ? $settings['maxconns'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Maximum number of clients allowed">Max Connection</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['tcpport'], $settings['udpport'])) ? 'TCP : ' . $settings['tcpport'] . ', UDP : ' . $settings['udpport'] : 'N/A on ' . $stats['version'] ?>
            </div>
            <abbr title="TCP &amp; UDP listen port">TCP/UDP Port</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['inter'])) ? $settings['inter'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Listen interface">Listen Interface</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['evictions'])) ? ucfirst($settings['evictions']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="When Off, LRU evictions are disabled">Evictions</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['domain_socket'])) ? $settings['domain_socket'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Path to the domain socket (if any)">Path to Domain Socket</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['umask'])) ? $settings['umask'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Umask for the creation of the domain socket">Domain Socket Umask</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['chunk_size'])) ? $settings['chunk_size'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Minimum space allocated for key + value + flags">Chunk Size</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['growth_factor'])) ? $settings['growth_factor'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Chunk size growth factor">Chunk Growth Factor</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['num_threads'])) ? $settings['num_threads'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Number of threads (including dispatch)">Max Threads</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['stat_key_prefix'])) ? $settings['stat_key_prefix'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Stats prefix separator character">Stat Key Prefix</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['detail_enabled'])) ? ucfirst($settings['detail_enabled']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="If yes, stats detail is enabled">Detail Enabled</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['reqs_per_event'])) ? $settings['reqs_per_event'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Max num IO ops processed within an event">Max IO Ops/Event</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['cas_enabled'])) ? ucfirst($settings['cas_enabled']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="When no, CAS is not enabled for this server">CAS Enabled</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['tcp_backlog'])) ? $settings['tcp_backlog'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="TCP listen backlog">TCP Listen Backlog</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['auth_enabled_sasl'])) ? ucfirst($settings['auth_enabled_sasl']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="SASL auth requested and enabled">SASL Auth</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['item_size_max'])) ? Library_Data_Analysis::byteResize($settings['item_size_max']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Maximum item size">Item Size Max</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['maxconns_fast'])) ? ucfirst($settings['maxconns_fast']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="If fast disconnects are enabled">Fast Disconnects</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['hashpower_init'])) ? $settings['hashpower_init'] : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Starting size multiplier for hash table">Hash Power</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['slab_reassign'])) ? ucfirst($settings['slab_reassign']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Whether slab page reassignment is allowed">Slab Reassign</abbr>
          </li>
          <li class="list-group-item">
            <div class="pull-right">
              <?php echo (isset($settings['slab_automove'])) ? ucfirst($settings['slab_automove']) : 'N/A on ' . $stats['version']; ?>
            </div>
            <abbr title="Whether slab page automover is enabled">Slab Automover</abbr>
          </li>
      </ul>
    </div>

    <?php elseif((isset($_GET['server'])) && ($cluster = $_ini->cluster($_GET['server']))) : ?>
      <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">
          Cluster <?php echo $_GET['server']; ?> Servers List
        </h3>
      </div>
      <ul class="list-group">
        <?php foreach($cluster as $name => $server) : ?>
        <li class="list-group-item">
          <div class="pull-right">
           <?php echo ($status[$name] != '') ? 'Version ' . $status[$name] . ', Uptime : ' . Library_Data_Analysis::uptime($uptime[$name]) : 'Server did not respond'; ?>
          </div>
          <a href="index.php?server=<?php echo $name; ?>"><?php echo (strlen($name) > 27) ? substr($name, 0, 27) . ' [...]' : $name; ?></a>
        </li>
        <?php endforeach; ?>
      </ul>
    </div>
    <?php endif; ?>
  </section>

  <section class="col-md-3">
    <?php
    # Fixing issue 163, some results from stats slabs mem_requested are buggy @FIXME
    if($slabs['total_malloced'] > $stats['limit_maxbytes']) {
        $slabs['total_wasted'] = $stats['limit_maxbytes'] - ($slabs['total_malloced'] - $slabs['total_wasted']);
        $slabs['total_malloced'] = $stats['limit_maxbytes'];
    }

    # Making cache size stats
    $wasted_percent = sprintf('%.1f', $slabs['total_wasted'] / $stats['limit_maxbytes'] * 100);
    $used_percent = sprintf('%.1f', ($slabs['total_malloced'] - $slabs['total_wasted']) / $stats['limit_maxbytes'] * 100);
    $free_percent = sprintf('%.1f', ($stats['limit_maxbytes'] - $slabs['total_malloced']) / $stats['limit_maxbytes'] * 100);
    ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Cache Size Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::byteResize($slabs['total_malloced']); ?>Bytes
          </div>
          Used
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::byteResize($stats['limit_maxbytes']); ?>Bytes
          </div>
          Total
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::byteResize($slabs['total_wasted']); ?>Bytes
          </div>
          Wasted
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo sprintf('%.1f', $stats['bytes'] / $stats['limit_maxbytes'] * 100, 1); ?>%
          </div>
          Percent
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Cache Size Graphic</h3>
      </div>
        <img src="http://chart.apis.google.com/chart?chf=bg,s,ebebeb&amp;chs=281x225&amp;cht=p&amp;chco=b5463f|2a707b|ffffff&amp;chd=t:<?php echo $wasted_percent; ?>,<?php echo $used_percent; ?>,<?php echo $free_percent; ?>&amp;chdl=Wasted%20<?php echo $wasted_percent; ?>%|Used%20<?php echo $used_percent; ?>%|Free%20<?php echo $free_percent; ?>%&amp;chdlp=b" alt="Cache Size by GoogleCharts" width="281" height="225"/>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Hash Table Stats</h3>
      </div>
      <ul class="list-group">
        <?php if ((isset($_GET['server'])) && ($_ini->server($_GET['server']))) : # Viewing a single server ?>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['hash_power_level'])) ? Library_Data_Analysis::byteResize($stats['hash_power_level']) . 'Bytes' : 'N/A on ' . $stats['version']; ?>
          </div>
          <abbr title="Current size multiplier for hash table">Power Level</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php if(isset($stats['hash_is_expanding'])) { if($stats['hash_is_expanding']) { echo 'Yes'; } else { echo 'No'; } } else { echo 'N/A on ' . $stats['version']; } ?>
          </div>
          <abbr title="Indicates if the hash table is being grown to a new size">Expanding</abbr>
        </li>
        <?php endif; ?>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo (isset($stats['hash_bytes'])) ? Library_Data_Analysis::byteResize($stats['hash_bytes']) . 'Bytes' : 'N/A on ' . $stats['version']; ?>
          </div>
          Size
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Slab Reassign &amp; Automove</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right"><?php echo (isset($stats['slabs_moved'])) ? Library_Data_Analysis::hitResize($stats['slabs_moved']) : 'N/A on ' . $stats['version']; ?></div>
          <abbr title="Indicates how many pages have been successfully moved">Slabs Moved</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right"><?php echo isset($stats['slab_reassign_running']) ? ($stats['slab_reassign_running'] ? 'Yes' : 'No') : 'N/A on ' . $stats['version']; ?></div>
          <abbr title="Indicates if the slab thread is attempting to move a page.&#013;It may need to wait for some memory to free up, so it could take several seconds.">Reassigning</abbr>
        </li>
      </ul>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Hit &amp; Miss Rate Graphic</h3>
      </div>
        <img src="http://chart.apis.google.com/chart?cht=bvg&amp;chd=t:<?php echo $stats['get_hits_percent']; ?>,<?php echo $stats['get_misses_percent']; ?>&amp;chs=280x145&amp;chl=Hit|Miss&amp;chf=bg,s,ebebeb&amp;chco=2a707b|b5463f&amp;chxt=y&amp;chbh=a&amp;chm=N,000000,0,-1,11" alt="Cache Hit &amp; Miss Rate" />
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Network Stats</h3>
      </div>
      <ul class="list-group">
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::byteResize($stats['bytes_read']); ?>Bytes
          </div>
          <abbr title="Total number of bytes read by this server">Bytes Read</abbr>
        </li>
        <li class="list-group-item">
          <div class="pull-right">
            <?php echo Library_Data_Analysis::byteResize($stats['bytes_written']); ?>Bytes
          </div>
          Bytes Written
        </li>
      </ul>
    </div>
  </section>
</section>
