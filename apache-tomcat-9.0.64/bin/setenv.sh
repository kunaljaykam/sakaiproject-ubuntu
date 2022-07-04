export JAVA_OPTS="-server -Xmx4g -XX:MaxMetaspaceSize=1g -Djava.awt.headless=true -XX:+UseCompressedOops -XX:+UseConcMarkSweepGC -XX:+DisableExplicitGC -Djava.util.Arrays.useLegacyMergeSort=true"

JAVA_OPTS="$JAVA_OPTS -Dhttp.agent=Sakai"

JAVA_OPTS="$JAVA_OPTS -Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false"

# replace the following two(Dsakai.security & Dsakai.home) with your sakai.properties path

JAVA_OPTS="$JAVA_OPTS -Dsakai.security=/home/kunaljaykam/sakaiproject/sakai-home"

JAVA_OPTS="$JAVA_OPTS -Dsakai.home=/home/kunaljaykam/sakaiproject/sakai-home"

JAVA_OPTS="$JAVA_OPTS -Dsakai.cookieName=SAKAI2SESSIONID"

JAVA_OPTS="$JAVA_OPTS -Dsakai.demo=true"

JAVA_OPTS="$JAVA_OPTS -Duser.timezone=US/Eastern"

JAVA_OPTS="$JAVA_OPTS -Duser.language=en -Duser.region=ES"