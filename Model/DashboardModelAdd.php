<?php
    require_once(__dir__ . '/Db.php');
    class DashboardModel extends Db {

      /**
        * @param null
        * @return array
        * @desc Returns an array of news....
      **/
      public function AddPost(string $table_name, array $data)
      {
        $columns = '';
        $values = '';
    
        foreach ($data as $key => $value) {
          $columns .= "`$key` ,";
          $values .= "'$value' ,";
        }
    
        $columns = substr($columns, 0, -1);
        $values = substr($values, 0, -1);
    
        $this->query("INSERT INTO `$table_name` ($columns) VALUES ($values)");
        $this->execute();
      }
    }
 ?>
