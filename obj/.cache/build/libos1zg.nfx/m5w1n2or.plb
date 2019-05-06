<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Streams </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Streams ">
    <meta name="generator" content="docfx 2.39.2.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../index.html" width="46">
                <img id="logo" src="../../Documentation/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Cloud Serices"> 
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="sdsStreams">
<h1 id="streams" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="5" sourceendlinenumber="5">Streams</h1>

<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="7" sourceendlinenumber="9">SDS stores collections of events and provides convenient ways to find and associating events. Events 
of consistent structure are stored in streams, called SdsStreams.  An SdsType defines the structure 
of events in an SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="11" sourceendlinenumber="12">SdsStreams are referenced by their identifier or Id field. SdsStream identifiers must be unique 
within a Namespace.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="14" sourceendlinenumber="15">An SdsStream must include a TypeId that references the identifier of an existing SdsType. 
When an SdsStream contains data, you must use a stream view to update the stream type.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="17" sourceendlinenumber="18">SdsStream management using the .NET SDS Client Libraries is performed through ISdsMetadataService. 
Create the ISdsMetadataService, using one of the <code>SdsService.GetMetadataService()</code> factory methods.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="20" sourceendlinenumber="21">The following table shows the required and optional SdsStream fields. Fields not listed are reserved
for internal SDS use.</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="24" sourceendlinenumber="35">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Searchable</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>String</td>
<td>Required</td>
<td>Yes</td>
<td>An identifier for referencing the stream</td>
</tr>
<tr>
<td>TypeId</td>
<td>String</td>
<td>Required</td>
<td>Yes</td>
<td>The SdsType identifier of the type to be used for this stream</td>
</tr>
<tr>
<td>Name</td>
<td>String</td>
<td>Optional</td>
<td>Yes</td>
<td>Friendly name</td>
</tr>
<tr>
<td>Description</td>
<td>String</td>
<td>Optional</td>
<td>Yes</td>
<td>Description text</td>
</tr>
<tr>
<td>Indexes</td>
<td>IList&lt;SdsStreamIndex></td>
<td>Optional</td>
<td>No</td>
<td>Used to define secondary indexes for stream</td>
</tr>
<tr>
<td>InterpolationMode</td>
<td>SdsInterpolationMode</td>
<td>Optional</td>
<td>No</td>
<td>Interpolation setting of the stream. Default is null.</td>
</tr>
<tr>
<td>ExtrapolationMode</td>
<td>SdsExtrapolationMode</td>
<td>Optional</td>
<td>No</td>
<td>Extrapolation setting of the stream. Default is null.</td>
</tr>
<tr>
<td>PropertyOverrides</td>
<td>IList&lt;SdsStreamPropertyOverride></td>
<td>Optional</td>
<td>No</td>
<td>Used to define unit of measure and interpolation mode overrides for a stream.</td>
</tr>
<tr>
<td><a class="xref" href="SdsStreamExtra.html" data-raw-source="[Tags](xref:sdsStreamExtra)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="34" sourceendlinenumber="34">Tags</a>*</td>
<td>IList&lt;String></td>
<td>Optional</td>
<td>Yes</td>
<td>A list of tags denoting special attributes or categories.</td>
</tr>
<tr>
<td><a class="xref" href="SdsStreamExtra.html" data-raw-source="[Metadata](xref:sdsStreamExtra)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="35" sourceendlinenumber="35">Metadata</a>*</td>
<td>IDictionary&lt;String, String></td>
<td>Optional</td>
<td>Yes</td>
<td>A dictionary of string keys and associated string values.</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="37" sourceendlinenumber="38"><strong>* Notes regarding Tags and Metadata:</strong> Stream Tags and Metadata are accessed via the Tags API And Metadata API respectively. However, 
they are associated with SdsStream objects and can be used as search criteria.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="40" sourceendlinenumber="40"><strong>Rules for the Stream Identifier (SdsStream.Id)</strong></p>
<ol sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="42" sourceendlinenumber="45">
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="42" sourceendlinenumber="42">Is not case sensitive</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="43" sourceendlinenumber="43">Can contain spaces</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="44" sourceendlinenumber="44">Cannot contain forward slash (&quot;/&quot;)</li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="45" sourceendlinenumber="45">Can contain a maximum of 100 characters</li>
</ol>
<h2 id="indexes" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="47" sourceendlinenumber="47">Indexes</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="49" sourceendlinenumber="50">The Key or Primary Index is defined at the SdsType. Secondary
Indexes are defined at the SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="52" sourceendlinenumber="54">Secondary Indexes are applied to a single property; there are no
compound secondary indexes. Only SdsTypeCodes
that can be ordered are supported for use in a secondary index.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="57" sourceendlinenumber="57">Indexes are discussed in greater detail here: <a class="xref" href="indexes.html" data-raw-source="[Indexes](xref:sdsIndexes)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="57" sourceendlinenumber="57">Indexes</a></p>
<h2 id="interpolation-and-extrapolation" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="60" sourceendlinenumber="60">Interpolation and Extrapolation</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="62" sourceendlinenumber="62">The InterpolationMode, ExtrapolationMode, and <a href="#propertyoverrides" data-raw-source="[PropertyOverrides](#propertyoverrides)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="62" sourceendlinenumber="62">PropertyOverrides</a> can be used to determine how a specific stream reads data. These read characteristics are inherited from the type if they are not defined at the stream level. For more information about type read characteristics and how these characteristics dictate how events are read see <a class="xref" href="SDS_Types.html" data-raw-source="[Types](xref:sdsTypes)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="62" sourceendlinenumber="62">Types</a>.</p>
<h2 id="propertyoverrides" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="65" sourceendlinenumber="65">PropertyOverrides</h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="67" sourceendlinenumber="68">PropertyOverrides provide a way to override interpolation behavior and unit of measure for individual 
SdsType Properties for a specific stream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="70" sourceendlinenumber="70">The <code>SdsStreamPropertyOverride</code> object has the following structure:</p>
<table sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="73" sourceendlinenumber="77">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr>
<td>SdsTypePropertyId</td>
<td>String</td>
<td>Required</td>
<td>SdsTypeProperty identifier</td>
</tr>
<tr>
<td>InterpolationMode</td>
<td>SdsInterpolationMode</td>
<td>Optional</td>
<td>Interpolation setting. Default is null</td>
</tr>
<tr>
<td>Uom</td>
<td>String</td>
<td>Optional</td>
<td>Unit of measure</td>
</tr>
</tbody>
</table>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="80" sourceendlinenumber="81">The unit of measure can be overridden for any type property defined by the stream type, including primary keys 
and secondary indexes. For more information about type property units of measure see <a class="xref" href="SDS_Types.html" data-raw-source="[Types](xref:sdsTypes)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="81" sourceendlinenumber="81">Types</a>. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="83" sourceendlinenumber="85">Read characteristics of the stream are determined by the type and the PropertyOverrides of the stream. The 
interpolation mode for non-index properties can be defined and overridden at the stream level. For more 
information about type read characteristics see <a class="xref" href="SDS_Types.html" data-raw-source="[Types](xref:sdsTypes)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="85" sourceendlinenumber="85">Types</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="87" sourceendlinenumber="89">When specifying property interpolation overrides, if the SdsType InterpolationMode is <code>Discrete</code>, it cannot be overridden 
at any level. When InterpolationMode is set to <code>Discrete</code> and an event it not defined for that index, a null 
value is returned for the entire event.</p>
<h1 id="sdsstream-api" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="91" sourceendlinenumber="91">SdsStream API</h1>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="93" sourceendlinenumber="97">The REST APIs provide programmatic access to read and write SDS data. The APIs in this 
section interact with SdsStreams. When working in .NET convenient SDS Client libraries are 
available. The <code>ISdsMetadataService</code> interface, accessed using the <code>SdsService.GetMetadataService( )</code> helper, 
defines the available functions. See <a href="#streams" data-raw-source="[Streams](#streams)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="96" sourceendlinenumber="96">Streams</a> for general 
SdsStream information. </p>
<hr>
<h2 id="get-stream" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="102" sourceendlinenumber="102"><code>Get Stream</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="104" sourceendlinenumber="104">Returns the specified stream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="106" sourceendlinenumber="106"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="107" sourceendlinenumber="109"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="111" sourceendlinenumber="111"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="113" sourceendlinenumber="114"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="116" sourceendlinenumber="117"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="119" sourceendlinenumber="120"><code>string streamId</code><br>The stream identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="123" sourceendlinenumber="124"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="126" sourceendlinenumber="127"><strong>Response body</strong><br>The requested SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="129" sourceendlinenumber="129">Example response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="130" sourceendlinenumber="139"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

{  
   &quot;Id&quot;:&quot;Simple&quot;,
   &quot;Name&quot;:&quot;Simple&quot;,
   &quot;TypeId&quot;:&quot;Simple&quot;,
}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="141" sourceendlinenumber="141"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="142" sourceendlinenumber="144"><code class="lang-csharp">   Task&lt;SdsStream&gt; GetStreamAsync(string streamId);
</code></pre><hr>
<h2 id="get-streams" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="148" sourceendlinenumber="148"><code>Get Streams</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="150" sourceendlinenumber="150">Returns a list of streams.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="152" sourceendlinenumber="156">If specifying the optional search parameter or optional filter parameter, the list of streams returned are filtered to match 
the search/filter criteria. If neither parameter is specified, the list includes all streams 
in the Namespace. See <a class="xref" href="Searching.html" data-raw-source="[Searching](xref:sdsSearching)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="154" sourceendlinenumber="154">Searching</a> 
and <a class="xref" href="Filter_Expressions_Metadata.html" data-raw-source="[Filter Expressions: SDS Objects](xref:sdsFilterExpressionsObjects)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="155" sourceendlinenumber="155">Filter Expressions: SDS Objects</a><br>for information about specifying those respective parameters.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="159" sourceendlinenumber="159"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="160" sourceendlinenumber="162"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams?query={query}&amp;filter={filter}&amp;skip={skip}&amp;count={count}&amp;orderby={orderby}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="164" sourceendlinenumber="164"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="166" sourceendlinenumber="167"><code>string tenantId</code><br>The tenant identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="169" sourceendlinenumber="170"><code>string namespaceId</code><br>The namespace identifier</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="172" sourceendlinenumber="175"><code>string query</code><br>An optional parameter representing a string search. 
See <a class="xref" href="Searching.html" data-raw-source="[Searching](xref:sdsSearching)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="174" sourceendlinenumber="174">Searching</a>
for information about specifying the search parameter.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="177" sourceendlinenumber="180"><code>string filter</code><br>An optional filter string to match which SdsStreams will be returned.  See the 
<a class="xref" href="Filter_Expressions_Metadata.html" data-raw-source="[Filter Expressions: SDS Objects](xref:sdsFilterExpressionsObjects)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="179" sourceendlinenumber="179">Filter Expressions: SDS Objects</a> 
topic for information about specifying the filter parameter.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="182" sourceendlinenumber="184"><code>int skip</code><br>An optional parameter representing the zero-based offset of the first SdsStream to retrieve. 
If not specified, a default value of 0 is used.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="186" sourceendlinenumber="188"><code>int count</code><br>An optional parameter representing the maximum number of SdsStreams to retrieve. 
If not specified, a default value of 100 is used.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="190" sourceendlinenumber="191"><code>string orderby</code><br>An optional parameter representing sorted order which SdsStreams will be returned. A field name is required. The sorting is based on the stored values for the given field (of type string). For example, <code>orderby=name</code> would sort the returned results by the <code>name</code> values (ascending by default). Additionally, a value can be provided along with the field name to identify whether to sort ascending or descending, by using values <code>asc</code> or <code>desc</code>, respectively. For example, <code>orderby=name desc</code> would sort the returned results by the <code>name</code> values, descending. If no value is specified, there is no sorting of results.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="193" sourceendlinenumber="194"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="196" sourceendlinenumber="197"><strong>Response body</strong><br>A collection of zero or more SdsStreams.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="199" sourceendlinenumber="199">Example response body:</p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="200" sourceendlinenumber="224"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

[  
   {  
      &quot;Id&quot;:&quot;Simple&quot;,
      &quot;TypeId&quot;:&quot;Simple&quot;
   },
   {  
      &quot;Id&quot;:&quot;Simple with Secondary&quot;,
      &quot;TypeId&quot;:&quot;Simple&quot;,
      &quot;Indexes&quot;:[  
         {  
            &quot;SdsTypePropertyId&quot;:&quot;Measurement&quot;
         }
      ]
   },
   {  
      &quot;Id&quot;:&quot;Compound&quot;,
      &quot;TypeId&quot;:&quot;Compound&quot;
   },
   ...
]
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="226" sourceendlinenumber="226"><strong>.NET Library</strong>  </p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="227" sourceendlinenumber="230"><code class="lang-csharp">   Task&lt;IEnumerable&lt;SdsStream&gt;&gt; GetStreamsAsync(string query = &quot;&quot;, int skip = 0, 
      int count = 100);
</code></pre><hr>
<h2 id="get-stream-type" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="234" sourceendlinenumber="234"><code>Get Stream Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="236" sourceendlinenumber="236">Returns the type definition that is associated with a given stream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="238" sourceendlinenumber="238"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="239" sourceendlinenumber="241"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/Type
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="243" sourceendlinenumber="243"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="245" sourceendlinenumber="246"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="248" sourceendlinenumber="249"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="251" sourceendlinenumber="252"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="254" sourceendlinenumber="255"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="257" sourceendlinenumber="258"><strong>Response body</strong><br>The requested SdsType.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="260" sourceendlinenumber="260"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="261" sourceendlinenumber="263"><code class="lang-csharp">   Task&lt;SdsType&gt; GetStreamTypeAsync(string streamId);
</code></pre><hr>
<h2 id="get-or-create-stream" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="267" sourceendlinenumber="267"><code>Get or Create Stream</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="269" sourceendlinenumber="272">Creates the specified stream. If a stream with a matching identifier already exists, SDS compares the 
existing stream with the stream that was sent. If the streams are identical, a <code>Found</code> (302) error 
is returned with the Location header set to the URI where the stream may be retrieved using a Get function. 
If the streams do not match, a <code>Conflict</code> (409) error is returned.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="274" sourceendlinenumber="276">For a matching stream (Found), clients that are capable of performing a redirect that includes the 
authorization header can automatically redirect to retrieve the stream. However, most clients, 
including the .NET HttpClient, consider redirecting with the authorization token to be a security vulnerability.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="278" sourceendlinenumber="280">When a client performs a redirect and strips the authorization header, SDS cannot authorize the request and 
returns <code>Unauthorized</code> (401). For this reason, it is recommended that when using clients that do not 
redirect with the authorization header, you should disable automatic redirect.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="283" sourceendlinenumber="283"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="284" sourceendlinenumber="286"><code class="lang-text">   POST api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="288" sourceendlinenumber="288"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="290" sourceendlinenumber="291"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="293" sourceendlinenumber="294"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="296" sourceendlinenumber="297"><code>string streamId</code><br>The stream identifier. The stream identifier must match the identifier in content. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="299" sourceendlinenumber="300"><strong>Request body</strong><br>The request content is the serialized SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="302" sourceendlinenumber="303"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="305" sourceendlinenumber="306"><strong>Response body</strong><br>The newly created SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="309" sourceendlinenumber="309"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="310" sourceendlinenumber="312"><code class="lang-csharp">      Task&lt;SdsStream&gt; GetOrCreateStreamAsync(SdsStream SdsStream);
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="314" sourceendlinenumber="316">If a stream with a matching identifier already exists and it matches the stream in the request body, 
the client redirects a GET to the Location header. If the existing stream does not match the stream 
in the request body, a Conflict error response is returned and the client library method throws an exception. </p>
<hr>
<h2 id="create-or-update-stream" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="320" sourceendlinenumber="320"><code>Create or Update Stream</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="322" sourceendlinenumber="323">Creates the specified stream. If a stream with the same Id already exists, the definition of the stream is updated. 
The following changes are permitted:  </p>
<ul sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="325" sourceendlinenumber="330">
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="325" sourceendlinenumber="325">Name  </li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="326" sourceendlinenumber="326">Description  </li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="327" sourceendlinenumber="327">Indexes  </li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="328" sourceendlinenumber="328">InterpolationMode  </li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="329" sourceendlinenumber="329">ExtrapolationMode  </li>
<li sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="330" sourceendlinenumber="330">PropertyOverrides  </li>
</ul>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="332" sourceendlinenumber="332">Note that modifying Indexes will result in re-indexing all of the stream&#39;s data for each additional secondary index.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="334" sourceendlinenumber="334">For more information on secondary indexes, see <a href="#indexes" data-raw-source="[Indexes](#indexes)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="334" sourceendlinenumber="334">Indexes</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="336" sourceendlinenumber="336">Unpermitted changes result in an error.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="338" sourceendlinenumber="338"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="339" sourceendlinenumber="341"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="343" sourceendlinenumber="343"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="345" sourceendlinenumber="346"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="348" sourceendlinenumber="349"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="351" sourceendlinenumber="352"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="354" sourceendlinenumber="355"><strong>Request body</strong><br>The request content is the serialized SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="357" sourceendlinenumber="358"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="361" sourceendlinenumber="361"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="362" sourceendlinenumber="364"><code class="lang-csharp">   Task CreateOrUpdateStreamAsync(SdsStream SdsStream);
</code></pre><hr>
<h2 id="update-stream-type" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="367" sourceendlinenumber="367"><code>Update Stream Type</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="369" sourceendlinenumber="370">Updates a stream’s type. The type is modified to match the specified stream view. 
Defined Indexes and PropertyOverrides are removed when updating a stream type. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="372" sourceendlinenumber="372"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="373" sourceendlinenumber="375"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/Type?streamViewId={streamViewId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="377" sourceendlinenumber="377"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="379" sourceendlinenumber="380"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="382" sourceendlinenumber="383"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="385" sourceendlinenumber="386"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="388" sourceendlinenumber="389"><code>string streamViewId</code><br>The stream view identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="391" sourceendlinenumber="392"><strong>Request body</strong><br>The request content is the serialized SdsStream.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="394" sourceendlinenumber="395"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="397" sourceendlinenumber="398"><strong>Response body</strong><br>On failure, the content contains a message describing the issue.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="400" sourceendlinenumber="400"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="401" sourceendlinenumber="403"><code class="lang-csharp">   Task UpdateStreamTypeAsync(string streamId, string streamViewId);
</code></pre><hr>
<h2 id="delete-stream" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="407" sourceendlinenumber="407"><code>Delete Stream</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="409" sourceendlinenumber="409">Deletes a stream. </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="411" sourceendlinenumber="411"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="412" sourceendlinenumber="414"><code class="lang-text">   DELETE api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="416" sourceendlinenumber="416"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="418" sourceendlinenumber="419"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="421" sourceendlinenumber="422"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="424" sourceendlinenumber="425"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="427" sourceendlinenumber="428"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="430" sourceendlinenumber="430"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="431" sourceendlinenumber="433"><code class="lang-csharp">   Task DeleteStreamAsync(string streamId);
</code></pre><hr>
<h2 id="get-streams-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="437" sourceendlinenumber="437"><code>Get Streams Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="439" sourceendlinenumber="439">Get the default ACL for the Streams collection. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="439" sourceendlinenumber="439">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="441" sourceendlinenumber="441"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="442" sourceendlinenumber="444"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="446" sourceendlinenumber="446"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="448" sourceendlinenumber="449"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="451" sourceendlinenumber="452"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="454" sourceendlinenumber="455"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="457" sourceendlinenumber="458"><strong>Response body</strong><br>The default ACL for Streams</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="460" sourceendlinenumber="460"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="461" sourceendlinenumber="463"><code class="lang-csharp">   Task&lt;AccessControlList&gt; GetStreamsAccessControlListAsync();
</code></pre><hr>
<h2 id="update-streams-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="466" sourceendlinenumber="466"><code>Update Streams Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="468" sourceendlinenumber="468">Update the default ACL for the Streams collection. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="468" sourceendlinenumber="468">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="470" sourceendlinenumber="470"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="471" sourceendlinenumber="473"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="475" sourceendlinenumber="475"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="477" sourceendlinenumber="478"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="480" sourceendlinenumber="481"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="483" sourceendlinenumber="484"><strong>Request body</strong><br>Serialized ACL</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="486" sourceendlinenumber="487"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="489" sourceendlinenumber="489"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="490" sourceendlinenumber="492"><code class="lang-csharp">   Task UpdateStreamsAccessControlListAsync(AccessControlList streamsAcl);
</code></pre><hr>
<h2 id="get-stream-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="496" sourceendlinenumber="496"><code>Get Stream Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="498" sourceendlinenumber="498">Get the ACL of the specified stream. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="498" sourceendlinenumber="498">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="500" sourceendlinenumber="500"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="501" sourceendlinenumber="503"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="505" sourceendlinenumber="505"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="507" sourceendlinenumber="508"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="510" sourceendlinenumber="511"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="513" sourceendlinenumber="514"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="516" sourceendlinenumber="517"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="519" sourceendlinenumber="520"><strong>Response Body</strong><br>The ACL for the specified stream </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="522" sourceendlinenumber="522"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="523" sourceendlinenumber="525"><code class="lang-csharp">   Task&lt;AccessControlList&gt; GetStreamAccessControlListAsync(string streamId);
</code></pre><hr>
<h2 id="update-stream-access-control-list" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="528" sourceendlinenumber="528"><code>Update Stream Access Control List</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="530" sourceendlinenumber="530">Update the ACL of the specified stream. For more information on ACLs, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="530" sourceendlinenumber="530">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="532" sourceendlinenumber="532"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="533" sourceendlinenumber="535"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/AccessControl
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="537" sourceendlinenumber="537"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="539" sourceendlinenumber="540"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="542" sourceendlinenumber="543"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="545" sourceendlinenumber="546"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="548" sourceendlinenumber="549"><strong>Request body</strong><br>Serialized ACL</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="551" sourceendlinenumber="552"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="554" sourceendlinenumber="554"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="555" sourceendlinenumber="557"><code class="lang-csharp">   Task UpdateStreamAccessControlListAsync(string streamId, AccessControlList streamAcl);
</code></pre><hr>
<h2 id="get-stream-owner" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="560" sourceendlinenumber="560"><code>Get Stream Owner</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="562" sourceendlinenumber="562">Get the Owner of the specified stream. For more information on Owners, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="562" sourceendlinenumber="562">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="564" sourceendlinenumber="564"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="565" sourceendlinenumber="567"><code class="lang-text">   GET api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/Owner
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="569" sourceendlinenumber="569"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="571" sourceendlinenumber="572"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="574" sourceendlinenumber="575"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="577" sourceendlinenumber="578"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="580" sourceendlinenumber="581"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="583" sourceendlinenumber="584"><strong>Response Body</strong><br>The Owner for the specified stream </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="586" sourceendlinenumber="586"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="587" sourceendlinenumber="589"><code class="lang-csharp">   Task&lt;Trustee&gt; GetStreamOwnerAsync(string streamId);
</code></pre><hr>
<h2 id="update-stream-owner" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="592" sourceendlinenumber="592"><code>Update Stream Owner</code></h2>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="594" sourceendlinenumber="594">Update the Owner of the specified stream. For more information on Owners, see <a href="xref:accesscontrol" data-raw-source="[Access Control](xref:accesscontrol)" sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="594" sourceendlinenumber="594">Access Control</a>.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="596" sourceendlinenumber="596"><strong>Request</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="597" sourceendlinenumber="599"><code class="lang-text">   PUT api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/Owner
</code></pre><p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="601" sourceendlinenumber="601"><strong>Parameters</strong></p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="603" sourceendlinenumber="604"><code>string tenantId</code><br>The tenant identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="606" sourceendlinenumber="607"><code>string namespaceId</code><br>The namespace identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="609" sourceendlinenumber="610"><code>string streamId</code><br>The stream identifier  </p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="612" sourceendlinenumber="613"><strong>Request body</strong><br>Serialized Owner</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="615" sourceendlinenumber="616"><strong>Response</strong><br>The response includes a status code.</p>
<p sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="618" sourceendlinenumber="618"><strong>.NET Library</strong></p>
<pre sourcefile="Documentation/SequentialDataStore/SDS_Streams.md" sourcestartlinenumber="619" sourceendlinenumber="621"><code class="lang-csharp">   Task UpdateStreamOwnerAsync(string streamId, Trustee streamOwner);
</code></pre></article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/OCS-Docs/blob/master/Documentation/SequentialDataStore/SDS_Streams.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
            <span id='copyright-text'>© 2019 - OSIsoft, LLC.<span>
        </span></span></div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>
