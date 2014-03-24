<div class="size-4" style="float:left;">
    <div class="sub-header corner padding">Slabs <span class="green">Stats</span></div>
    <div class="container corner padding">
        <div class="line">
            <span class="left">Slabs Used</span>
            <?php echo $slabs['active_slabs']; ?>
        </div>
        <div class="line">
            <span class="left">Memory Used</span>
            <?php echo Library_Data_Analysis::byteResize($slabs['total_malloced']); ?>Bytes
        </div>
        <div class="line">
            <span class="left">Wasted</span>
            <?php echo Library_Data_Analysis::byteResize($slabs['total_wasted']); ?>Bytes
        </div>
    </div>
</div>

<div class="size-2" style="float:left;padding-left:9px;margin-top:10px;">
    <div class="header corner padding size-3cols" style="text-align:center;">
        <a href="?server=<?php echo $_GET['server']; ?>">See this Server Stats</a>
    </div>
    <br/>
</div>

<div class="size-1" style="float:left;padding-left:9px;margin-top:9px;">
    <div class="container corner" style="padding:9px;">
        For more informations about memcached slabs stats, see memcached protocol
        <a href="http://github.com/memcached/memcached/blob/master/doc/protocol.txt#L470" target="_blank"><span class="green">here</span></a>
    </div>
</div>
<table class="datagrid">
    <thead>
        <tr>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=slab_index">Index</a></th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=chunk_size" title="The amount of space each chunk uses. One item will use one chunk of the appropriate size.">Chunk Size</a></th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=used_chunks" title="How many chunks have been allocated to items.">Used Chunks</a></th>
            <th>% of Used Chunks</th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=total_chunks" title="Total number of chunks allocated to the slab class.">Total Chunks</a></th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=total_pages" title="Total number of pages allocated to the slab class.">Total Pages</a></th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=mem_malloced" title="Total amount of memory allocated to slab pages.">Used</a></th>
            <th><a href="?server=<?php echo $_GET['server']; ?>&amp;show=slabs&amp;sort=mem_wasted">Wasted</a></th>
            <th>Hits</th>
            <th>Evicted</th>
            <th>Evicted Last</th>
            <th>Out of Memory</th>
            <th>Tail Repairs</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
<?php
$actualSlab = 0;

// Slabs parsing
foreach ($slabs as $id => $slab) :
    if (is_numeric($id)) :
?>
        <tr>
            <td>Slab <?php echo $id; ?></td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['chunk_size']); ?>Bytes</td>
            <td>
                <?php echo Library_Data_Analysis::hitResize($slab['used_chunks']); ?>
            </td>
            <td>
                <?php echo Library_Data_Analysis::valueResize($slab['used_chunks'] / $slab['total_chunks'] * 100); ?> %
            </td>
            <td><?php echo Library_Data_Analysis::hitResize($slab['total_chunks']); ?></td>
            <td><?php echo $slab['total_pages']; ?></td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['mem_malloced']); ?>Bytes</td>
            <td><?php echo Library_Data_Analysis::byteResize($slab['mem_wasted']); ?>Bytes</td>
            <td><?php echo ($slab['request_rate'] > 999) ? Library_Data_Analysis::hitResize($slab['request_rate']) : $slab['request_rate']; ?> Request/sec</td>
            <?php if ($slab['used_chunks'] > 0) : ?>
            <td><?php echo (isset($slab['items:evicted'])) ? $slab['items:evicted'] : 'N/A'; ?></td>
            <td><?php echo Library_Data_Analysis::uptime($slab['items:evicted_time']); ?></td>
            <td><?php echo $slab['items:outofmemory']; ?></td>
            <td><?php echo $slab['items:tailrepairs']; ?></td>
            <td><a href="?server=<?php echo $_GET['server']; ?>&amp;show=items&amp;slab=<?php echo $id; ?>">Items</a></td>
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
