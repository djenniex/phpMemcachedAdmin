<?php
# Server seems down
if ((isset($stats)) && (($stats === false) || ($stats == array()))) : ?>
  <div class="alert alert-danger">
    <?php
    # Asking server of cluster stats
    if (isset($_GET['server'])) :
      echo ($_ini->cluster($_GET['server'])) ? 'All servers from Cluster ' . $_GET['server'] : 'Server '  . $_GET['server'], ' did not respond !';
    else :
      echo 'Servers did not respond !';
    endif;
    ?>
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading">
      Error Message
    </div>
    <div class="panel-body">
      <?php echo Library_Data_Error::last(); ?>
    </div>
    <div class="panel-footer">
      Please check above error message, your <a href="configure.php">configuration</a> or your server status and retry
    </div>
  </div>
<?php elseif((isset($slabs)) && ($slabs === false)) : ?>
  <div class="alert alert-danger">
    No slabs used in this server !
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading">
      Error Message
    </div>
    <div class="panel-body">
      Maybe this server is not used, check your <a href="configure.php">configuration</a> or your server status and retry
    </div>
  </div>
<?php elseif((isset($items)) && ($items === false)) : ?>
  <div class="alert alert-danger">
    No item in this slab !
  </div>
  <div class="panel panel-danger">
    <div class="panel-heading">
      Error Message
    </div>
    <div class="panel-body">
      This slab is allocated, but is empty
    </div>
    <div class="panel-footer">
      Go back to <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs">Server Slabs</a>
    </div>
  </div>
<?php endif;
