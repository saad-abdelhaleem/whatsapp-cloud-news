# News update workflow

Run every two days. Read index.html before researching. Use Meta WhatsApp changelog, pricing documentation, Embedded Signup documentation and official announcements first. Search the wider web for additional coverage; treat vendor blogs and Reddit as leads, not proof of pricing or policy changes. Open and verify every source. Record publication date separately from effective date. Never invent news, dates, links or successful checks.

Compare against existing entries and avoid duplicates. Correct existing claims only with verified evidence. Preserve the page design and existing functionality. Add concise Egyptian Arabic summaries with source links and practical impact for WhatsApp Cloud API developers. Keep Arabic and English on separate lines in newly authored prose where possible. Change last-updated only for substantive editorial changes. If there is no verified meaningful change, do not edit or commit.

Before editing, require a clean Git working tree. If user changes exist, stop publication and report the conflict. After editing, inspect the diff and confirm valid article markup, working copy/share controls and accurate dates. Run publish-news.ps1 to commit and push only index.html. Never force push, reset, stash user work or stage unrelated files. If push fails, report the failure and preserve the commit. On a later run, inspect and retry an existing unpublished newsletter commit before making another one.

Live site: https://whatsapp-cloud-news.saad-abdelhaleem.workers.dev/
After push, check the live site for the new content. A successful push alone does not prove deployment. Notify this chat with a concise Arabic summary and site link only for meaningful new/corrected news, completed publication, failure or required user action. Stay quiet when unchanged.
