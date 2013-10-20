# This is the generic solr parameters
class solr::params {
    case $osfamily {
        'Debian': {
           	$java_package = "openjdk-6-jdk"
           	$tomcat_user = 'tomcat6'
        }
        'RedHat': {
        	$java_package = "java-1.6.0-openjdk-devel"
        	$tomcat_user = 'tomcat'
        }
	    default: {
	      fail("Operating system, $osfamily, is not supported by the tomcat module")
	    }
	}
	
}
