<div class="header">
  <h1>$name$</h1>
  <h2>$role$</h2>
  <p>$contact$</p>
</div>

## $summary_title$

$summary$

## $experience_title$

$for(jobs)$

### $jobs.title$ @ $jobs.company$ | *$jobs.date$*

$for(jobs.details)$
- $jobs.details$
$endfor$

$endfor$
