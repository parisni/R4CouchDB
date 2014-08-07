source("load.r")

context("testing cdbMakeDB()")
cdb <- cdbIni()

test_that("error msg generated", {

    expect_that(cdbMakeDB(cdb), throws_error(
        "^.*no cdb\\$newDBName given"
        ))

})


test_that("base functionality of cdbAddDoc()", {
    dbs  <- unlist(cdbListDB(cdb)$res)
    i    <- which(dbs %in% c(testConsts$db))
    
    
    if(length(i) > 0){
        cdb$removeDBName <- testConsts$db
        tmp <- cdbRemoveDB(cdb)
    }

    cdb$newDBName <- testConsts$db
    cdb <- cdbMakeDB(cdb)
    
    expect_that(cdb$res$ok, equals(TRUE))
    expect_that(cdb$newDBName, equals(""))
    expect_that(cdb$DBName, equals(testConsts$db))
    

})
