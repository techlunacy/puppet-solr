# This is the generic solr parameters
class solr::params {
    case $osfamily {
        'Debian': {
           	$java_package = "openjdk-6-jdk"
        }
        'RedHat': {
        	$java_package = "java-1.6.0-openjdk"
        }
	    default: {
	      fail("Operating system, $osfamily, is not supported by the tomcat module")
	    }
	}
	
}
