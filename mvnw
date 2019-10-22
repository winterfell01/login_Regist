#!/bin/sh
# ----------------------------------------------------------------------------
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Maven2 Start Up Batch script
#
# Required ENV vars:
# ------------------
#   JAVA_HOME - location of a JDK home dir
#
# Optional ENV vars
# -----------------
#   M2_HOME - location of maven2's installed home dir
#   MAVEN_OPTS - parameters passed to the Java VM when running Maven
#     e.g. to debug Maven itself, use
#       set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000
#   MAVEN_SKIP_RC - flag to disable loading of mavenrc files
# ----------------------------------------------------------------------------

<<<<<<< HEAD
if [ -z "$MAVEN_SKIP_RC" ]; then

  if [ -f /etc/mavenrc ]; then
    . /etc/mavenrc
  fi

  if [ -f "$HOME/.mavenrc" ]; then
=======
if [ -z "$MAVEN_SKIP_RC" ] ; then

  if [ -f /etc/mavenrc ] ; then
    . /etc/mavenrc
  fi

  if [ -f "$HOME/.mavenrc" ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
    . "$HOME/.mavenrc"
  fi

fi

# OS specific support.  $var _must_ be set to either true or false.
<<<<<<< HEAD
cygwin=false
darwin=false
mingw=false
case "$(uname)" in
CYGWIN*) cygwin=true ;;
MINGW*) mingw=true ;;
Darwin*)
  darwin=true
  # Use /usr/libexec/java_home if available, otherwise fall back to /Library/Java/Home
  # See https://developer.apple.com/library/mac/qa/qa1170/_index.html
  if [ -z "$JAVA_HOME" ]; then
    if [ -x "/usr/libexec/java_home" ]; then
      export JAVA_HOME="$(/usr/libexec/java_home)"
    else
      export JAVA_HOME="/Library/Java/Home"
    fi
  fi
  ;;
esac

if [ -z "$JAVA_HOME" ]; then
  if [ -r /etc/gentoo-release ]; then
    JAVA_HOME=$(java-config --jre-home)
  fi
fi

if [ -z "$M2_HOME" ]; then
=======
cygwin=false;
darwin=false;
mingw=false
case "`uname`" in
  CYGWIN*) cygwin=true ;;
  MINGW*) mingw=true;;
  Darwin*) darwin=true
    # Use /usr/libexec/java_home if available, otherwise fall back to /Library/Java/Home
    # See https://developer.apple.com/library/mac/qa/qa1170/_index.html
    if [ -z "$JAVA_HOME" ]; then
      if [ -x "/usr/libexec/java_home" ]; then
        export JAVA_HOME="`/usr/libexec/java_home`"
      else
        export JAVA_HOME="/Library/Java/Home"
      fi
    fi
    ;;
esac

if [ -z "$JAVA_HOME" ] ; then
  if [ -r /etc/gentoo-release ] ; then
    JAVA_HOME=`java-config --jre-home`
  fi
fi

if [ -z "$M2_HOME" ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
  ## resolve links - $0 may be a link to maven's home
  PRG="$0"

  # need this for relative symlinks
<<<<<<< HEAD
  while [ -h "$PRG" ]; do
    ls=$(ls -ld "$PRG")
    link=$(expr "$ls" : '.*-> \(.*\)$')
    if expr "$link" : '/.*' >/dev/null; then
      PRG="$link"
    else
      PRG="$(dirname "$PRG")/$link"
    fi
  done

  saveddir=$(pwd)

  M2_HOME=$(dirname "$PRG")/..

  # make it fully qualified
  M2_HOME=$(cd "$M2_HOME" && pwd)
=======
  while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
      PRG="$link"
    else
      PRG="`dirname "$PRG"`/$link"
    fi
  done

  saveddir=`pwd`

  M2_HOME=`dirname "$PRG"`/..

  # make it fully qualified
  M2_HOME=`cd "$M2_HOME" && pwd`
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f

  cd "$saveddir"
  # echo Using m2 at $M2_HOME
fi

# For Cygwin, ensure paths are in UNIX format before anything is touched
<<<<<<< HEAD
if $cygwin; then
  [ -n "$M2_HOME" ] &&
    M2_HOME=$(cygpath --unix "$M2_HOME")
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME=$(cygpath --unix "$JAVA_HOME")
  [ -n "$CLASSPATH" ] &&
    CLASSPATH=$(cygpath --path --unix "$CLASSPATH")
fi

# For Mingw, ensure paths are in UNIX format before anything is touched
if $mingw; then
  [ -n "$M2_HOME" ] &&
    M2_HOME="$( (
      cd "$M2_HOME"
      pwd
    ))"
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME="$( (
      cd "$JAVA_HOME"
      pwd
    ))"
=======
if $cygwin ; then
  [ -n "$M2_HOME" ] &&
    M2_HOME=`cygpath --unix "$M2_HOME"`
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME=`cygpath --unix "$JAVA_HOME"`
  [ -n "$CLASSPATH" ] &&
    CLASSPATH=`cygpath --path --unix "$CLASSPATH"`
fi

# For Mingw, ensure paths are in UNIX format before anything is touched
if $mingw ; then
  [ -n "$M2_HOME" ] &&
    M2_HOME="`(cd "$M2_HOME"; pwd)`"
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME="`(cd "$JAVA_HOME"; pwd)`"
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
  # TODO classpath?
fi

if [ -z "$JAVA_HOME" ]; then
<<<<<<< HEAD
  javaExecutable="$(which javac)"
  if [ -n "$javaExecutable" ] && ! [ "$(expr \"$javaExecutable\" : '\([^ ]*\)')" = "no" ]; then
    # readlink(1) is not available as standard on Solaris 10.
    readLink=$(which readlink)
    if [ ! $(expr "$readLink" : '\([^ ]*\)') = "no" ]; then
      if $darwin; then
        javaHome="$(dirname \"$javaExecutable\")"
        javaExecutable="$(cd \"$javaHome\" && pwd -P)/javac"
      else
        javaExecutable="$(readlink -f \"$javaExecutable\")"
      fi
      javaHome="$(dirname \"$javaExecutable\")"
      javaHome=$(expr "$javaHome" : '\(.*\)/bin')
=======
  javaExecutable="`which javac`"
  if [ -n "$javaExecutable" ] && ! [ "`expr \"$javaExecutable\" : '\([^ ]*\)'`" = "no" ]; then
    # readlink(1) is not available as standard on Solaris 10.
    readLink=`which readlink`
    if [ ! `expr "$readLink" : '\([^ ]*\)'` = "no" ]; then
      if $darwin ; then
        javaHome="`dirname \"$javaExecutable\"`"
        javaExecutable="`cd \"$javaHome\" && pwd -P`/javac"
      else
        javaExecutable="`readlink -f \"$javaExecutable\"`"
      fi
      javaHome="`dirname \"$javaExecutable\"`"
      javaHome=`expr "$javaHome" : '\(.*\)/bin'`
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
      JAVA_HOME="$javaHome"
      export JAVA_HOME
    fi
  fi
fi

<<<<<<< HEAD
if [ -z "$JAVACMD" ]; then
  if [ -n "$JAVA_HOME" ]; then
    if [ -x "$JAVA_HOME/jre/sh/java" ]; then
=======
if [ -z "$JAVACMD" ] ; then
  if [ -n "$JAVA_HOME"  ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
      # IBM's JDK on AIX uses strange locations for the executables
      JAVACMD="$JAVA_HOME/jre/sh/java"
    else
      JAVACMD="$JAVA_HOME/bin/java"
    fi
  else
<<<<<<< HEAD
    JAVACMD="$(which java)"
  fi
fi

if [ ! -x "$JAVACMD" ]; then
=======
    JAVACMD="`which java`"
  fi
fi

if [ ! -x "$JAVACMD" ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
  echo "Error: JAVA_HOME is not defined correctly." >&2
  echo "  We cannot execute $JAVACMD" >&2
  exit 1
fi

<<<<<<< HEAD
if [ -z "$JAVA_HOME" ]; then
=======
if [ -z "$JAVA_HOME" ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
  echo "Warning: JAVA_HOME environment variable is not set."
fi

CLASSWORLDS_LAUNCHER=org.codehaus.plexus.classworlds.launcher.Launcher

# traverses directory structure from process work directory to filesystem root
# first directory with .mvn subdirectory is considered project base directory
find_maven_basedir() {

<<<<<<< HEAD
  if [ -z "$1" ]; then
=======
  if [ -z "$1" ]
  then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
    echo "Path not specified to find_maven_basedir"
    return 1
  fi

  basedir="$1"
  wdir="$1"
<<<<<<< HEAD
  while [ "$wdir" != '/' ]; do
    if [ -d "$wdir"/.mvn ]; then
=======
  while [ "$wdir" != '/' ] ; do
    if [ -d "$wdir"/.mvn ] ; then
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
      basedir=$wdir
      break
    fi
    # workaround for JBEAP-8937 (on Solaris 10/Sparc)
    if [ -d "${wdir}" ]; then
<<<<<<< HEAD
      wdir=$(
        cd "$wdir/.."
        pwd
      )
=======
      wdir=`cd "$wdir/.."; pwd`
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
    fi
    # end of workaround
  done
  echo "${basedir}"
}

# concatenates all lines of a file
concat_lines() {
  if [ -f "$1" ]; then
<<<<<<< HEAD
    echo "$(tr -s '\n' ' ' <"$1")"
  fi
}

BASE_DIR=$(find_maven_basedir "$(pwd)")
if [ -z "$BASE_DIR" ]; then
  exit 1
=======
    echo "$(tr -s '\n' ' ' < "$1")"
  fi
}

BASE_DIR=`find_maven_basedir "$(pwd)"`
if [ -z "$BASE_DIR" ]; then
  exit 1;
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
fi

##########################################################################################
# Extension to allow automatically downloading the maven-wrapper.jar from Maven-central
# This allows using the maven wrapper in projects that prohibit checking in binary data.
##########################################################################################
if [ -r "$BASE_DIR/.mvn/wrapper/maven-wrapper.jar" ]; then
<<<<<<< HEAD
  if [ "$MVNW_VERBOSE" = true ]; then
    echo "Found .mvn/wrapper/maven-wrapper.jar"
  fi
else
  if [ "$MVNW_VERBOSE" = true ]; then
    echo "Couldn't find .mvn/wrapper/maven-wrapper.jar, downloading it ..."
  fi
  jarUrl="https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.4.2/maven-wrapper-0.4.2.jar"
  while IFS="=" read key value; do
    case "$key" in wrapperUrl)
      jarUrl="$value"
      break
      ;;
    esac
  done <"$BASE_DIR/.mvn/wrapper/maven-wrapper.properties"
  if [ "$MVNW_VERBOSE" = true ]; then
    echo "Downloading from: $jarUrl"
  fi
  wrapperJarPath="$BASE_DIR/.mvn/wrapper/maven-wrapper.jar"

  if command -v wget >/dev/null; then
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Found wget ... using wget"
    fi
    wget "$jarUrl" -O "$wrapperJarPath"
  elif command -v curl >/dev/null; then
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Found curl ... using curl"
    fi
    curl -o "$wrapperJarPath" "$jarUrl"
  else
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Falling back to using Java to download"
    fi
    javaClass="$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.java"
    if [ -e "$javaClass" ]; then
      if [ ! -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
        if [ "$MVNW_VERBOSE" = true ]; then
          echo " - Compiling MavenWrapperDownloader.java ..."
        fi
        # Compiling the Java class
        ("$JAVA_HOME/bin/javac" "$javaClass")
      fi
      if [ -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
        # Running the downloader
        if [ "$MVNW_VERBOSE" = true ]; then
          echo " - Running MavenWrapperDownloader.java ..."
        fi
        ("$JAVA_HOME/bin/java" -cp .mvn/wrapper MavenWrapperDownloader "$MAVEN_PROJECTBASEDIR")
      fi
    fi
  fi
=======
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Found .mvn/wrapper/maven-wrapper.jar"
    fi
else
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Couldn't find .mvn/wrapper/maven-wrapper.jar, downloading it ..."
    fi
    jarUrl="https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.4.2/maven-wrapper-0.4.2.jar"
    while IFS="=" read key value; do
      case "$key" in (wrapperUrl) jarUrl="$value"; break ;;
      esac
    done < "$BASE_DIR/.mvn/wrapper/maven-wrapper.properties"
    if [ "$MVNW_VERBOSE" = true ]; then
      echo "Downloading from: $jarUrl"
    fi
    wrapperJarPath="$BASE_DIR/.mvn/wrapper/maven-wrapper.jar"

    if command -v wget > /dev/null; then
        if [ "$MVNW_VERBOSE" = true ]; then
          echo "Found wget ... using wget"
        fi
        wget "$jarUrl" -O "$wrapperJarPath"
    elif command -v curl > /dev/null; then
        if [ "$MVNW_VERBOSE" = true ]; then
          echo "Found curl ... using curl"
        fi
        curl -o "$wrapperJarPath" "$jarUrl"
    else
        if [ "$MVNW_VERBOSE" = true ]; then
          echo "Falling back to using Java to download"
        fi
        javaClass="$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.java"
        if [ -e "$javaClass" ]; then
            if [ ! -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
                if [ "$MVNW_VERBOSE" = true ]; then
                  echo " - Compiling MavenWrapperDownloader.java ..."
                fi
                # Compiling the Java class
                ("$JAVA_HOME/bin/javac" "$javaClass")
            fi
            if [ -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
                # Running the downloader
                if [ "$MVNW_VERBOSE" = true ]; then
                  echo " - Running MavenWrapperDownloader.java ..."
                fi
                ("$JAVA_HOME/bin/java" -cp .mvn/wrapper MavenWrapperDownloader "$MAVEN_PROJECTBASEDIR")
            fi
        fi
    fi
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
fi
##########################################################################################
# End of extension
##########################################################################################

export MAVEN_PROJECTBASEDIR=${MAVEN_BASEDIR:-"$BASE_DIR"}
if [ "$MVNW_VERBOSE" = true ]; then
  echo $MAVEN_PROJECTBASEDIR
fi
MAVEN_OPTS="$(concat_lines "$MAVEN_PROJECTBASEDIR/.mvn/jvm.config") $MAVEN_OPTS"

# For Cygwin, switch paths to Windows format before running java
if $cygwin; then
  [ -n "$M2_HOME" ] &&
<<<<<<< HEAD
    M2_HOME=$(cygpath --path --windows "$M2_HOME")
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME=$(cygpath --path --windows "$JAVA_HOME")
  [ -n "$CLASSPATH" ] &&
    CLASSPATH=$(cygpath --path --windows "$CLASSPATH")
  [ -n "$MAVEN_PROJECTBASEDIR" ] &&
    MAVEN_PROJECTBASEDIR=$(cygpath --path --windows "$MAVEN_PROJECTBASEDIR")
=======
    M2_HOME=`cygpath --path --windows "$M2_HOME"`
  [ -n "$JAVA_HOME" ] &&
    JAVA_HOME=`cygpath --path --windows "$JAVA_HOME"`
  [ -n "$CLASSPATH" ] &&
    CLASSPATH=`cygpath --path --windows "$CLASSPATH"`
  [ -n "$MAVEN_PROJECTBASEDIR" ] &&
    MAVEN_PROJECTBASEDIR=`cygpath --path --windows "$MAVEN_PROJECTBASEDIR"`
>>>>>>> 68a8844da1aed5a0d375c89eeb8dbb3ac869e01f
fi

WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain

exec "$JAVACMD" \
  $MAVEN_OPTS \
  -classpath "$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar" \
  "-Dmaven.home=${M2_HOME}" "-Dmaven.multiModuleProjectDirectory=${MAVEN_PROJECTBASEDIR}" \
  ${WRAPPER_LAUNCHER} $MAVEN_CONFIG "$@"
