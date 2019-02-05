---
uid: sdsWritingData
---

Writing data
============

The Sds REST APIs provide programmatic access to read and write SDS data. This section describes 
the APIs used to write SdsStream data.

When working in .NET, convenient Sds Client libraries are available. The ``ISdsDataServiceinterface``, accessed using the
``SdsService.GetDataService( )`` helper, defines the available functions.

All writes rely on a stream’s key or primary index. Preexisting values and positioning within the stream 
is determined exclusively by the primary index. Secondary indexes are updated, but they do not contribute 
to the request. All references to indexes are to the primary index.

The following single value write methods are available:

* **Insert Value** inserts a value at the specified primary index. 
* **Patch Value** updates specific fields in an existing value identified by the primary index.
* **Replace Value** replaces the value at the specified primary index.
* **Update Value** replaces the value with matching primary index. If no value exists the value is added.
* **Remove Value** deletes the value at the specified primary index.


The following support writing multiple values:

* **Insert Values** inserts a collection of values.
* **Patch Values** updates specific fields for a collection of values.
* **Replace Values** replaces a collection of values.
* **Update Values** replaces or adds a collection of values.
* **Remove Values** deletes the values at the specified primary indexes.
* **Remove Window Values** removes values that fall within the window defined by the start and end primary indexes.


The base URI for writing SDS data to a single stream is:

      api/v1-preview/Tenants/{tenantId}/Namespaces/{namespaceId}/Streams/{streamId}/Data  
      
**Parameters**

``string tenantId``  
  The tenant identifier  
  
``string namespaceId``  
  The namespace identifier  
  
``string streamId``  
  The stream identifier  


Response Format
---------------

Supported response formats include JSON, verbose JSON, and Sds. 

The default response format for reading data is JSON, which is used in all examples in this document. 
Default JSON responses do not include any values that are equal to the default value for their type.

Verbose JSON responses include all values in the returned JSON payload, including defaults.
To specify verbose JSON return, add the header ``Accept-Verbosity`` with a value of ``verbose`` to the request. 

Verbose has no impact on writes; writes return only error messages.

To specify Sds format, set the ``Accept`` header in the request to ``application/Sds``.

Indexes
-------

Sds writes rely on the primary index for positioning within streams and locating existing events. 
Most writes use the index as specified by the value. Deletes are the exception to this rule. When deleting, 
indexes are specified as strings in the URI, or, when using the Sds Client libraries, the index may be 
passed as-is to delete methods that take the index type as a generic argument. More details about working 
with indexes can be found on the [Indexes](xref:sdsIndexes) page. 

To specify compound indexes in the URI, specify each field that composes the index, in the specified order, 
separated by the pipe character, ‘|’.

***********************
