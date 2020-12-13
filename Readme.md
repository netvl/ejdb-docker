# Dockerfile for running EJDB command line tool

**Unmaintained.**

---

This is a dockerfile for an image which contains [EJDB] command line tool. Run `docker build` to
build the image:

```
% docker build -t ejdb .
```

When building, it downloads the latest Git version of the tool from [its repository][ejdb-cli-repo],
fixes [Softmotions/ejdb-node#15][issue-15] with a custom `package.json` and builds it. Afterwards
it exposes `ejdb` command through `ENTRYPOINT` Docker feature, so you can run it like this:

```
% docker run -it --rm -v /path/to/your/db:/db ejdb
Welcome to EJDB CLI v1.2.10-34
ejdb> db.open("/db/example")
{ file: '/db/example', collections: [] }
ejdb> 
```

Note that depending on how you run Docker, the new database files may belong to the root user,
so you need to change their ownership and access rights to make it accessible for other programs,
if it is necessary.

  [EJDB]: http://ejdb.org/
  [ejdb-cli-repo]: https://github.com/Softmotions/ejdb-node
  [issue-15]: https://github.com/Softmotions/ejdb-node/issues/15
