**Cost**

The cost details include only the DataBus costs and not the source and
target cost as they could vary depending on the solution implementation.
Also, the cost details do not cover any data transfer costs that could
occur in a cross-region integration.

The EventBridge Pipe cost includes only for the messages that are
filtered and delivered to the pipe flow. The cost can be further
optimized by designing the batch of events per request. Each 64KB chunk
of payload is billed as one request. USD \$0.40 is billed for every one
million requests entering a pipe after filtering.

**POC Cost:**

Assuming 1000 water meters connected to the Digital Utility IoT platform
and 100 meters failed to report the reads. The filtered meter events
that enter the missing read pipe would be 100 per day.

  -----------------------------------------------------------------------------------
  **Implementation   **Number of   **Filtered   **Filtered     **Events   **Monthly
  Phase**            Meter         Meter Events Meter Events   Per        Cost in
                     Events**      per Day      per Month**    Batch**    USD**
                                   (10%)**                                
  ------------------ ------------- ------------ -------------- ---------- -----------
  POC                1000          100          3000           1          \$0.0012

  Pilot              100K          10K          300K           1          \$0.12

  Production         10M           100K         3M             1          \$1.20
  -----------------------------------------------------------------------------------

Software licenses

There are no third-party software or tools used in this Blueprint that
would result in any software licenses.
