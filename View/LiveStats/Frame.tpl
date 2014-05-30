<script type="text/javascript">
  // var interval = <?php echo (5 + $refresh_rate - $_ini->get('refresh_rate')) * 1000; ?>;
  // setInterval("liveStats('<?php echo $cluster; ?>', interval)", interval);
  setInterval(function() {
    $.ajax({
      type: 'GET',
      url: 'stats.php',
      cache: false,
      data: {request_command: 'live_stats', cluster: '<?php echo $cluster; ?>'},
      success: function (msg) {
        $('#stats').html(msg);
      },
      error: function (xhr, ajaxOptions, thrownError) {
        $('#stats').html('Loading stats error : ' + xhr.responseText);
      }
    });
  }, <?php echo (5 + $refresh_rate - $_ini->get('refresh_rate')) * 1000; ?>);
</script>

<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Live Stats</h3>
  </div>
  <div class="panel-body">
    <?php if ($refresh_rate > $_ini->get('refresh_rate')) : ?>
    <div class="container corner" style="padding:9px;">
        Connections errors were discovered, to prevent any problem, refresh rate was increased by
        <?php echo sprintf('%.1f', $refresh_rate - $_ini->get('refresh_rate')); ?> seconds.
    </div>
    <?php endif; ?>

    <div class="row">
      <form class="form-horizontal" role="form">
      <div class="form-group">
        <label class="col-sm-2 control-label">Cluster</label>
        <div class="col-sm-6">
          <?php echo Library_HTML_Components::clusterSelect('cluster_select', (isset($_GET['cluster'])) ? $_GET['cluster'] : '', 'live form-control'); ?>
        </div>
      </div>
      </form>
    </div>
    <div class="row">
      <pre id="stats" class="live">
        Loading live stats, please wait ~<?php echo sprintf('%.0f', 5 + $refresh_rate - $_ini->get('refresh_rate')); ?> seconds ...
      </pre>
    </div>
  </div>
</div>
