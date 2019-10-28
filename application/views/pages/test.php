<?php foreach($query_result as $row){?>
    <table>
        <tr>
            <td><?php echo $row->id;?></td>
            <td><?php echo $row->about_text;?></td>
            <td ><?php echo $row->sort;?></td>
        </tr>
    </table>
<?php }?>