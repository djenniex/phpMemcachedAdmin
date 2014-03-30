Last Update : <?php echo date('r', time()); ?> (refresh rate : <?php echo $_ini->get('refresh_rate'); ?> sec);

<table class="table">
    <thead>
        <tr>
            <th>Name</th>
            <th><abbr title="Total cache size on this server">SIZE</abbr></th>
            <th><abbr title="Percentage of total cache size used on this server">%MEM</abbr></th>
            <th><abbr title="Time taken to connect to the server and proceed the request, high value can indicate a latency or server problem">TIME</abbr></th>
            <th><abbr title="Current connections, monitor that this number doesn't come too close to the server max connection setting">CONN</abbr></th>
            <th><abbr title="Global hit percent on this server : get_hits / (get_hits + get_misses)">%HIT</abbr></th>
            <th><abbr title="Total request per second (get, set, delete, incr, ...) issued to this server">REQ/s</abbr></th>
            <th><abbr title="GET command per second issued to this server">GET/s</abbr></th>
            <th><abbr title="SET command per second issued to this server">SET/s</abbr></th>
            <th><abbr title="DELETE command per second issued to this server">DEL/s</abbr></th>
            <th><abbr title="Number of times an item which had an explicit expire time set had to be evicted before it expired">EVI/s</abbr></th>
            <th><abbr title="Total number of bytes read by this server from network">READ/s</abbr></th>
            <th><abbr title="Total number of bytes sent by this server to network">WRITE/s</abbr></th>
        </tr>
    </thead>
    <tbody>
<?php foreach($stats as $server => $data) { ?>
        <tr>
            <td><?php echo $server; ?></td>
<?php
    # Checking for stats validity
    if((isset($data['time'], $data['bytes_percent'], $data['get_hits_percent'], $data['query_time'], $data['request_rate'], $data['curr_connections'],
    $data['get_rate'], $data['set_rate'], $data['delete_rate'], $data['eviction_rate'], $data['bytes_read'], $data['bytes_written'])) && ($data['time'] > 0)) {
?>
            <td><?php echo Library_Data_Analysis::byteResize($data['limit_maxbytes']); ?></td>
            <td><?php
                if ($data['bytes_percent'] > $_ini->get('memory_alert')) {
                    echo '<span class="label label-danger">' . $data['bytes_percent'] . '</span>';
                } else {
                    echo $data['bytes_percent'];
                }
            ?></td>
            <td><?=Library_Data_Analysis::valueResize($data['query_time']); ?> ms</td>
            <td><?=$data['curr_connections']; ?></td>
            <td><?php
                if($data['get_hits_percent'] < $_ini->get('hit_rate_alert')) {
                    echo '<span class="label label-danger">' . sprintf('%.1f', $data['get_hits_percent']) . '</span>';
                } else {
                    echo $data['get_hits_percent'];
                }
            ?></td>
            <td><?=Library_Data_Analysis::valueResize($data['request_rate']); ?></td>
            <td><?=Library_Data_Analysis::valueResize($data['get_rate']); ?></td>
            <td><?=Library_Data_Analysis::valueResize($data['set_rate']); ?></td>
            <td><?= Library_Data_Analysis::valueResize($data['delete_rate']); ?></td>
            <td><?php
                if($data['eviction_rate'] > $_ini->get('eviction_alert')) {
                    echo '<span class="label label-danger">' . Library_Data_Analysis::valueResize($data['eviction_rate']) . '</span>';
                } else {
                    echo Library_Data_Analysis::valueResize($data['eviction_rate']);
                }
            ?></td>
            <td><?=Library_Data_Analysis::byteResize($data['bytes_read'] / $data['time']); ?></td>
            <td><?=Library_Data_Analysis::byteResize($data['bytes_written'] / $data['time']); ?></td>
<?php } else { ?>
            <td colspan="12"><span class="label label-danger">An error has occured when retreiving or calculating stats</span></td>
<?php
    }
}
?>
    </tbody>
</table>
