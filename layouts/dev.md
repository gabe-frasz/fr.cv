<div class="header">
  <h1>$name$</h1>
  <h2>$role$</h2>
</div>

<div class="contacts">
<span>$contacts.phone$</span>

[$contacts.email$](mailto:$contacts.email$)

[LINKEDIN: $contacts.linkedin$](https://www.linkedin.com/in/$contacts.linkedin$)

[GITHUB: $contacts.github$](https://github.com/$contacts.github$)
</div>

---

## $objective.title$

$objective.body$

## $summary.title$

$summary.body$

## $experience_title$

$for(jobs)$

$jobs.date$ | $jobs.company$ $if(jobs.company_link)$([$jobs.company_link_name$]($jobs.company_link$))$endif$

$jobs.position$

- $jobs.responsability$

$endfor$

## $academics_title$

$for(institutions)$

$institutions.date$ | $institutions.subject$ - $institutions.name$

$endfor$

<div class="flex-row">
<div class="flex-column">

## $skills_title$

$for(skills)$

- $skills.name$

$endfor$

</div>
    
<div class="flex-column">

## $courses_title$

$for(courses)$

$courses.date$ | $courses.name$ - $courses.institution$

$endfor$

</div>
</div>

## $languages_title$

$for(languages)$

$languages.name$ ($languages.level$) - $languages.institution$

$endfor$

## $projects_title$

$for(projects)$

$projects.date$ | [$projects.name$]($projects.link$)

- $projects.description$

$endfor$
