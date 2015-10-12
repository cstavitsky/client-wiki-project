# Client Wiki Project

## Approach
In a group of four, we collaborated over 3 days to build a wiki site for a hypothetical client. 

## Core Functionality
The site has different pages for different organizations, and non-member users can request member access in order to edit or create new wiki pages for a given organization.

## Schema notes
We wanted 'articles' and 'versions' to exist in separate database tables. An 'article' displays the text of the most recent version; when a user thinks s/he is adding a new article, s/he is actually just adding a new version. We felt this was a worthwhile way, from a developer's perspective, to avoid duplicating text in articles and versions.

