# Clojure launch scripts

This repo contains a set of launcher scripts for Clojure and ClojureScript, and related utilities.

The launcher scripts are written as Windows Batch files (for Windows) and Bash (for Unix).

## The scripts

The scripts replace invocations of the java executable. Internally, they build a command line with the launch executable and the classpath (see below), and any extra arguments.

## The classpath and clj-path

The launcher scripts check for a file with name `.classpath` on the current directory. If it exists, its contents will be used to build the environment variable CLASSPATH.

For the Clojure launcher, the environment variable CLASSPATH is built by concatenating the location of the jar file for Clojure with the contents of the file `.classpath`.

For the ClojureScript launcher, it uses the location of the ClojureScript jar file instead.

The file should contain one classpath entry per line.


## Usage

    clj <args>
	
Runs Clojure with params appended to the invocation of the Java executable.

    cljs <args>
	
Runs ClojureScript with params appended to the invocation of the Java executable.
