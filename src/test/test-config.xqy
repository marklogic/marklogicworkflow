(:
Copyright 2012 MarkLogic Corporation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
:)
xquery version "1.0-ml";

module namespace c = "http://marklogic.com/roxy/test-config";

(: configured at deploy time by Roxy deployer :)
declare variable $c:USER := "@ml.user";
declare variable $c:PASSWORD := "@ml.password";
declare variable $c:RESTHOST := "localhost";
declare variable $c:RESTPORT := "@ml.test-port";

(: to do - change to send json too :)
declare variable $c:json-options :=
  <options xmlns="xdmp:http">
    <authentication method="digest">
      <username>{$c:USER}</username>
      <password>{$c:PASSWORD}</password>
    </authentication>
    <headers>
      <content-type>application/xml</content-type>
      <accept>application/json</accept>
    </headers>
  </options>;

declare variable $c:xml-options :=
  <options xmlns="xdmp:http">
    <authentication method="digest">
      <username>{$c:USER}</username>
      <password>{$c:PASSWORD}</password>
    </authentication>
    <headers>
      <content-type>application/xml</content-type>
      <accept>application/xml</accept>
    </headers>
  </options>;

