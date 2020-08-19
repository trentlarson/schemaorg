<!DOCTYPE html>
<html lang="en">
<!-- Generated from Home.tpl -->
    {% include 'docs/DocsHead.tpl' with context %}
<body>
    {% include 'PageHeader.tpl' with context %}
  <div id="mainContent" class="faq">


<h1>Organization of Schemas</h1>
The schemas are a set of 'types', each associated with a set of properties. The types are arranged in a hierarchy.<br/>
The vocabulary currently consists of {{termcounts["Type"]}} Types, {{termcounts["Property"]}} Properties {{termcounts["Datatype"]}} Datatypes, {{termcounts["Enumeration"]}} Enumerations and {{termcounts["Enumerationvalue"]}} Enumeration members.<br/>

<br />Browse the full hierarchy in HTML:
<ul>
  <li><a href="../Thing">One page per type</a></li>
  <li><a href="full.html">Full list of types, shown on one page</a></li>
</ul>
<br />

Or you can jump directly to a commonly used type:
<ul>
  <li>Creative works: {{ sdotermlink("CreativeWork")|safe }}, {{ sdotermlink("Book")|safe }}, {{ sdotermlink("Movie")|safe }}, {{ sdotermlink("MusicRecording")|safe }}, {{ sdotermlink("Recipe")|safe }}, {{ sdotermlink("TVSeries")|safe }} ...</li>
  <li>Embedded non-text objects: {{ sdotermlink("AudioObject")|safe }}, {{ sdotermlink("ImageObject")|safe }}, {{ sdotermlink("VideoObject")|safe }}</li>
  <li>{{ sdotermlink("Event")|safe }}</li>
  <li><a href="meddocs.html">Health and medical types</a>: notes on the health and medical types under {{ sdotermlink("MedicalEntity")|safe }}.</li>
  <li>{{ sdotermlink("Organization")|safe }}</li>
  <li>{{ sdotermlink("Person")|safe }}</li>
  <li>{{ sdotermlink("Place")|safe }}, {{ sdotermlink("LocalBusiness")|safe }}, {{ sdotermlink("Restaurant")|safe }} ...</li>
  <li>{{ sdotermlink("Product")|safe }}, {{ sdotermlink("Offer")|safe }}, {{ sdotermlink("AggregateOffer")|safe }}</li>
  <li>{{ sdotermlink("Review")|safe }}, {{ sdotermlink("AggregateRating")|safe }}</li>
  <li>{{ sdotermlink("Action")|safe }}></li>
</ul>

<br/>See also the <a href="releases.html">releases</a> page for recent updates and project history.<br/>

<br />
We also have a small set of <a href="../DataType">primitive data types</a> for numbers, text, etc. More details about the data model, etc. are available <a href="datamodel.html">here</a>.
<br />

<br />Developer information / Download Machine Readable files (RDF, JSON-LD, etc):
<ul>
  <li><a href="developers.html">Schema.org for Developers</a>
</ul>
<br />


 <h2 id="ext">Extensions</h2>

 <p>As schema.org has grown, we have explored various mechanisms for <a href="/docs/extension.html">community extension</a> as
   a way of adding more detailed descriptive vocabulary that builds on the schema.org core. Some areas of Schema.org were
   developed as "named extensions", and have dedicated entry pages. We previously called these "hosted" extensions, but
   they are best considered simply as views into a single collection of schema definitions.
</p>


 <h3 id="hosted">Hosted Sections</h3>

<p>
For example, via the <a href="http://auto.schema.org/">auto</a> section there is a property for <a href="{{staticPath}}/emissionsCO2">emissionsCO2</a>,
and via the <a href="http://bib.schema.org/">bib</a> section we have a property <a href="{{staticPath}}/publisherImprint">publisherImprint</a>.
However, from the perspective of a publisher, these are simply schema.org properties. </p>

<p>We have a few of these areas:</p>
<ul>
{% for ext in extensions %}
	<li>{{ ext | safe }}</li>
{% endfor %}
</ul>


<p><b>Note</b>: the 'pending' and 'meta' hosted sections are part of schema.org's schema development process.</p>
<p id="ext_pending">
  We use the 'pending' section as a staging area for new schema.org terms that are under discussion and review.
  Implementors and publishers are cautioned that terms in the <a href="/docs/pending.home.html">pending</a> section
  may lack consensus and that terminology and definitions could still change significantly after community and <a href="/docs/about.html#cgsg">steering group</a> review.
  Consumers of schema.org data who encourage use of such terms are <em>strongly encouraged</em>
  to update implementations and documentation to track any evolving changes, and to share early implementation feedback with the <a href="http://www.w3.org/community/schemaorg">wider community</a>.
</p>

<p id="ext_meta">
The 'meta' section is primarily for vocabulary used internally within schema.org to support technical definitions and
schema.org site functionality. These terms are not intended for general usage in the public Web.
</p>
<p id="attic"><strong>Attic</strong> ({{attic | safe}}) is a special area where terms are archived when deprecated from the core and other sections, or removed from <a href="pending.home.html">pending</a> as not accepted into the full vocabulary. References to terms in the attic area are not normally displayed unless accessed via the term identifier or via the {{attic | safe}} home page. Implementors and data publishers are cautioned not to use terms in the attic area.
</p>

<p>
Unlike other core and section terms, these areas may be updated at any time without the need for a full <a href="releases.html">release</a>.
</p>

<h3 id="extext">External Extensions</h3>

<p>The schema.org <a href="about.html#cgsg">steering group</a> does not officially approve external extensions - they are fully independent.
  We list here some notable extensions that extend schema.org in interesting and useful ways.</p>

<ul>
  <li><a href="http://gs1.org/voc/">GS1 Web Vocabulary</a> (<a href="http://blog.schema.org/2016/02/gs1-milestone-first-schemaorg-external.html">blog post</a>)</li>
</ul>
<br/>
  </div><!-- mainContent -->


	{% include 'PageFooter.tpl' with context %}

</body>
</html>
