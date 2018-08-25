# Master setup

## Dependancies

`python2-pygit2` (Archlinux)

## Master config


 - clone the repo at `/srv/salt`
 - properly configure the salt master to get the states / pillars from the
 right place / fetch git dependancies:


```yaml
file_roots:
  base:
    - /srv/salt/states

fileserver_backend:
  - roots
  - git

gitfs_provider: pygit2

gitfs_remotes:
  - https://github.com/saltstack-formulas/users-formula.git
  - https://github.com/saltstack-formulas/openssh-formula.git

pillar_roots:
  base:
    - /srv/salt/pillars

pillar_source_merging_strategy: recurse
pillar_merge_lists: True
```