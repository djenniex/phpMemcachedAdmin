<section class="row">
  <section class="col-md-4">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Slabs Stats</h3>
    </div>
    <ul class="list-group">
      <li class="list-group-item">
        <div class="pull-right">
          <?php echo $slabs['active_slabs']; ?>
        </div>
        Slabs Used
      </li>
      <li class="list-group-item">
        <div class="pull-right">
          <?php echo Library_Data_Analysis::byteResize($slabs['total_malloced']); ?>
        </div>
        Memory Used
      </li>
      <li class="list-group-item">
        <div class="pull-right">
          <?php echo Library_Data_Analysis::byteResize($slabs['total_wasted']); ?>
        </div>
        Wasted
      </li>
    </ul>
  </div>
  </section>

  <div class="col-md-3">
    <p><a href="?server=<?php echo $_GET['server']; ?>" class="btn btn-default">See this Server Stats</a></p>
    <p>For more informations about memcached slabs stats, see <a href="http://github.com/memcached/memcached/blob/master/doc/protocol.txt#L470" target="_blank">memcached protocol</a></p>
  </div>
</section>

<div class="table-responsive" data-pattern="priority-columns">
  <table cellspacing="0" id="slabs" class="table table-small-font table-bordered table-striped">
    <thead>
        <tr>
            <th class="persist essential">
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=slab_index">Index</a>
            </th>
            <th class="essential" data-priority="1">
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=chunk_size"><abbr title="The amount of space each chunk uses. One item will use one chunk of the appropriate size.">Chunk Size</abbr></a>
            </th>
            <th class="essential" data-priority="1">
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=used_chunks"><abbr title="How many chunks have been allocated to items.">Used Chunks</abbr></a>
            </th>
            <th class="essential" data-priority="1">% of Used Chunks</th>
            <th data-priority="3"><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=total_chunks"><abbr title="Total number of chunks allocated to the slab class.">Total Chunks</abbr></a></th>
            <th class="essential"><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=total_pages"><abbr title="Total number of pages allocated to the slab class.">Total Pages</abbr></a></th>
            <th class="essential" data-priority="1">
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=mem_malloced"><abbr title="Total amount of memory allocated to slab pages.">Used</abbr></a>
            </th>
            <th class="essential" data-priority="1">
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=mem_wasted">Wasted</a>
            </th>
            <th class="optional" data-priority="2">
              Hits (Req/sec)
            </th>
            <th data-priority="3">
              <abbr title="Total number of get requests serviced by this class">Get Hits</abbr>
            </th>
            <th data-priority="3">
              Set Hits
            </th>
            <th data-priority="3">
              Delete Hits
            </th>
            <th data-priority="3">
              Incr Hits
            </th>
            <th data-priority="3">
              Decr Hits
            </th>
            <th data-priority="3">
              <abbr title="Number of times an entry was stored using memory from an expired entry.">Reclaimed</abbr>
            </th>
            <th data-priority="3">
              <abbr title="Number of times an item had to be evicted from the LRU before it expired">Evicted</abbr>
            </th>
            <th data-priority="3">
              <abbr title="Number of expired items reclaimed from the LRU which were never touched after being set.">Expired Unfetched</abbr>
            </th>
            <th data-priority="3">
              <abbr title="Number of valid items evicted from the LRU which were never touched after being set.">Evicted Unfetched</abbr>
            </th>
            <th data-priority="3">
              Evicted Last
            </th>
            <th data-priority="3">
              <abbr title="Number of times the underlying slab class was unable to store a new item. This means you are running with -M or an eviction failed.">Out of Memory</abbr>
            </th>
            <!-- <th>Out of Memory</th>
            <th>Tail Repairs</th> -->
        </tr>
    </thead>
    <tbody>
<?php
$actualSlab = 0;

// Slabs parsing
foreach ($slabs as $id => $slab) :
    // var_dump($slab);
    if (is_numeric($id)) :
?>
        <tr>
            <td>
              <a href="?server=<?php echo $_GET['server']; ?>&amp;show=items&amp;slab=<?php echo $id; ?>">Slab <?php echo $id; ?></a>
            </td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['chunk_size']); ?></td>
            <td>
                <?php echo Library_Data_Analysis::hitResize($slab['used_chunks']); ?>
            </td>
            <td>
                <?php echo Library_Data_Analysis::valueResize($slab['used_chunks'] / $slab['total_chunks'] * 100); ?> %
            </td>
            <td><?php echo Library_Data_Analysis::hitResize($slab['total_chunks']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['total_pages']); ?></td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['mem_malloced']); ?></td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['mem_wasted']); ?></td>
            <td><?php echo ($slab['request_rate'] > 999) ? Library_Data_Analysis::hitResize($slab['request_rate']) : $slab['request_rate']; ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['get_hits']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['cmd_set']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['delete_hits']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['incr_hits']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['decr_hits']); ?></td>
            <?php if ($slab['used_chunks'] > 0) : ?>
            <td><?php echo Library_Data_Analysis::valueResize($slab['items:reclaimed']); ?></td>
            <td><?php echo (isset($slab['items:evicted'])) ? Library_Data_Analysis::valueResize($slab['items:evicted']) : 'N/A'; ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['items:expired_unfetched']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['items:evicted_unfetched']); ?></td>
            <td><?php echo Library_Data_Analysis::uptime($slab['items:evicted_time']); ?></td>
            <td><?php echo Library_Data_Analysis::valueResize($slab['items:outofmemory']); ?></td>
            <!-- <td><?php echo $slab['items:outofmemory']; ?></td>
            <td><?php echo $slab['items:tailrepairs']; ?></td> -->
            <?php else: ?>
            <td colspan="5">Slab is allocated but empty</td>
            <?php endif; ?>
       </tr>
<?php
    endif;
endforeach;
?>
    </tbody>
  </table>
</div>