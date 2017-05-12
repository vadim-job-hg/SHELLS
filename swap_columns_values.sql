UPDATE `locations` SET `longitude`=(@temp:=`longitude`), `longitude` = `latitude`, `latitude` = @temp;
