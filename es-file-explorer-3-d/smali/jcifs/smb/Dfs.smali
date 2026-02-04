.class public Ljcifs/smb/Dfs;
.super Ljava/lang/Object;


# static fields
.field static final DISABLED:Z

.field protected static FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

.field static final TTL:J

.field static log:Ljcifs/util/LogStream;

.field static final strictView:Z


# instance fields
.field protected _domains:Ljcifs/smb/Dfs$CacheEntry;

.field protected referrals:Ljcifs/smb/Dfs$CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    invoke-static {v0, v3}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/Dfs;->TTL:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v3}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v2, v3

    :cond_1
    :try_start_1
    iget-object v0, v2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v2, v3, :cond_1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    sget-boolean v2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_3

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, p5, v0, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    sget-boolean v2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_3

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .locals 8

    const/4 v1, 0x0

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v4, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iput-object v1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    :cond_2
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    const-string v2, ""

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v4}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v0, v2

    :cond_4
    iget-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, v2, :cond_4

    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    sget-object v2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    sget-boolean v2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v2, :cond_6

    instance-of v2, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_6

    check-cast v0, Ljcifs/smb/SmbAuthException;

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .locals 7

    const/16 v6, 0x5c

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v1, 0x5c

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-le v1, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object v3, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v3, v3, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_3
    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v1, :cond_4

    new-instance v1, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_4
    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 13

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    if-nez v1, :cond_0

    const-string v1, "IPC$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    if-eqz v7, :cond_16

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_15

    iget-wide v11, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v6, v9, v11

    if-lez v6, :cond_15

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v8, v1

    :goto_1
    if-nez v8, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int v8, v1, v6

    new-instance v1, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v11, 0x0

    invoke-direct {v1, v11, v12}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object v6, v5

    :cond_4
    if-nez p3, :cond_5

    iget-object v11, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iput-object v11, v6, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    const-string v11, "\\"

    iput-object v11, v6, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    :cond_5
    iget v11, v6, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v11, v8

    iput v11, v6, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v6, v6, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v6, v5, :cond_4

    iget-object v6, v5, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iget-object v8, v5, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    move-object v1, v5

    :goto_2
    if-eqz v7, :cond_b

    const-string v8, "\\"

    iget-object v1, v7, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    if-eqz v1, :cond_7

    iget-wide v5, v1, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v5, v9, v5

    if-lez v5, :cond_7

    iget-object v1, v7, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_7
    if-nez v1, :cond_b

    if-nez v2, :cond_a

    move-object/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    if-nez p3, :cond_14

    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    move-object v1, v5

    goto :goto_2

    :cond_9
    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    if-ne v8, v1, :cond_13

    const/4 v1, 0x0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_2

    :cond_a
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iput-object v8, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    iget-object v2, v7, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object p1, v3

    move-object v3, v1

    :goto_3
    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v1, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v1, v9, v1

    if-lez v1, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_c
    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v1, :cond_d

    new-instance v1, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_10

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_f
    :goto_5
    if-eqz v2, :cond_12

    iget-object v2, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v2, v2, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    :goto_6
    move-object v3, v1

    goto :goto_4

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_f

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v4, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v6, 0x5c

    if-ne v2, v6, :cond_11

    const/4 v2, 0x1

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_12
    move-object v1, v3

    goto :goto_6

    :cond_13
    move-object v7, v8

    move-object v1, v2

    move-object v2, v5

    goto/16 :goto_2

    :cond_14
    move-object v7, v8

    move-object v1, v5

    goto/16 :goto_2

    :cond_15
    move-object v8, v1

    goto/16 :goto_1

    :cond_16
    move-object v4, p2

    move-object p1, v3

    move-object v3, v2

    goto/16 :goto_3

    :cond_17
    move-object v3, v2

    move-object v4, p2

    goto/16 :goto_3
.end method
