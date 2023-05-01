<?php
define('DB_NAME', 'WP_DB_NAME');
define('DB_USER', 'WP_DB_USER');
define('DB_PASSWORD', 'WP_DB_PASSWORD');
define('DB_HOST', 'mariadb');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

define( 'WP_ALLOW_REPAIR', true );

define('AUTH_KEY',         ';K[XuRPiM1=}D`>NMcaPU +Xp?rSO+R{|4cDK%J7FgflhlR$8K[m0[+Z8Rb4A=,k');
define('SECURE_AUTH_KEY',  'iE)0?)+mDHeRB;P8& xA+v^EF?~w5$])$q/41^vHis|NYXgpuN31DAb+0;mmJ b|');
define('LOGGED_IN_KEY',    ';^*DSQiuz# /Ks Y=(v Qks@{:MXTnC$eG5#&?^pv:*vsX]R,<hrm**0w]rG7DnO');
define('NONCE_KEY',        '}(pgA~=ye2.nxj+?Xz)Ms_^#_m)IX!p&[|@tsof/|{J/=,S+CsbN7T.pb*B#gI 7');
define('AUTH_SALT',        '5y>y~V|+e[:C1+2VvI1[qlV>IjoW!9Uva$YqyEfIPK4/.!oayfv`^9`0TBup-rV+');
define('SECURE_AUTH_SALT', 'YrY54|)nN=TeNtOvQZfx u4TQ;,Td5`O&>KSdt-iFU9T!=ezTIDe4}@t.WI-mYpZ');
define('LOGGED_IN_SALT',   'h;XC{=Ivd^%+F;ST8+=4Q]~1 %m]lkz[b{oVi43?0]W;nAT54:qU(3Kw!] y6g5t');
define('NONCE_SALT',       '`}`hbo`5}b+m%Q-o7{5At3j4G*1*T^x`&RN4LV$Nvp6->%>nw}V,quo!y%kT/Z/[');

$table_prefix = 'wp_';

define('WP_DEBUG', false);

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once(ABSPATH . 'wp-settings.php');
?>