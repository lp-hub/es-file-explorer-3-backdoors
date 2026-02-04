.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ae:[B

.field static f:Lcom/jcraft/jsch/Random;


# instance fields
.field private A:[B

.field private B:[B

.field private C:I

.field private D:I

.field private E:Lcom/jcraft/jsch/Cipher;

.field private F:Lcom/jcraft/jsch/Cipher;

.field private G:Lcom/jcraft/jsch/MAC;

.field private H:Lcom/jcraft/jsch/MAC;

.field private I:[B

.field private J:[B

.field private K:Lcom/jcraft/jsch/Compression;

.field private L:Lcom/jcraft/jsch/Compression;

.field private M:Lcom/jcraft/jsch/IO;

.field private N:Ljava/net/Socket;

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Ljava/lang/Thread;

.field private S:Ljava/lang/Object;

.field private T:Ljava/util/Hashtable;

.field private U:Lcom/jcraft/jsch/Proxy;

.field private V:Lcom/jcraft/jsch/UserInfo;

.field private W:Ljava/lang/String;

.field private X:I

.field private Y:I

.field private Z:J

.field a:[Ljava/lang/String;

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field private af:Lcom/jcraft/jsch/HostKey;

.field b:Z

.field c:Z

.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field g:Lcom/jcraft/jsch/Buffer;

.field h:Lcom/jcraft/jsch/Packet;

.field i:Lcom/jcraft/jsch/SocketFactory;

.field protected j:Z

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/String;

.field n:[B

.field o:Lcom/jcraft/jsch/JSch;

.field p:[I

.field q:Ljava/lang/Runnable;

.field private r:[B

.field private s:[B

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[B

.field private x:[B

.field private y:[B

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->ae:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSH-2.0-JSCH-0.1.44"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s:[B

    iput v3, p0, Lcom/jcraft/jsch/Session;->C:I

    iput v3, p0, Lcom/jcraft/jsch/Session;->D:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->O:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->P:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->b:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->c:Z

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->d:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->e:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    iput v3, p0, Lcom/jcraft/jsch/Session;->X:I

    iput v4, p0, Lcom/jcraft/jsch/Session;->Y:I

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Session;->Z:J

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, Lcom/jcraft/jsch/Session;->l:I

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->n:[B

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->p:[I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ab:I

    iput v5, p0, Lcom/jcraft/jsch/Session;->ac:I

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$GlobalRequestReply;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    return-void
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v1, 0x40000

    if-eq p4, v1, :cond_5

    if-eqz p3, :cond_5

    :goto_0
    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int v1, p5, v0

    :goto_1
    if-gtz v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v0, v4}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Packet corrupt"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    if-le v1, v0, :cond_4

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/jcraft/jsch/IO;->c([BII)V

    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    invoke-interface {p3, v2, v4, v0}, Lcom/jcraft/jsch/MAC;->a([BII)V

    :cond_3
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move-object p3, v0

    goto :goto_0
.end method

.method private a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    return-void
.end method

.method private a(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->e()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->f()Lcom/jcraft/jsch/HASH;

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    if-nez v0, :cond_0

    array-length v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    array-length v4, v2

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x41

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->v:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->w:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->v:[B

    array-length v4, v4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->x:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v4, v6, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->A:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v6, v4}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->B:[B

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v4, v4

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->z:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->x:[B

    invoke-interface {v0, v4, v5, v6}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->B:[B

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->I:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->J:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v4, v4

    if-gt v0, v4, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->y:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->w:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->ac:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->A:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v4, v4

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->z:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->z:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->z:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_3

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v3, v0, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v4, v4

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->y:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v8, v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->y:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->y:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_3
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x1

    const-string v0, "StrictHostKeyChecking"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->g()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/jcraft/jsch/KeyExchange;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->W:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->a()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, p1, v5}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;[B)I

    move-result v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ask"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_2
    if-ne v8, v11, :cond_13

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Lcom/jcraft/jsch/HostKeyRepository;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    const-string v0, "known_hosts"

    :cond_3
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " host key has just been changed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "The fingerprint for the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " key sent by the remote host is\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Please contact your system administrator.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Add correct host key in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " to get rid of this message."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ask"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v2

    :cond_4
    :goto_0
    if-nez v2, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostKey has been changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    iget-object v9, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v9, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    monitor-enter v1

    :try_start_4
    const-string v0, "DSA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ssh-dss"

    :goto_1
    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v0, v3

    :goto_2
    const-string v2, "ask"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "yes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_7
    if-eqz v8, :cond_b

    if-nez v0, :cond_b

    const-string v0, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reject HostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :try_start_5
    const-string v0, "ssh-rsa"

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "The authenticity of host \'"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' can\'t be established.\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " key fingerprint is "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Are you sure you want to continue connecting?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reject HostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v3

    :cond_b
    const-string v2, "no"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-ne v3, v8, :cond_12

    move v2, v3

    :goto_3
    if-nez v8, :cond_c

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Host \'"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' is known and mathces the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " host key"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Permanently added \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to the list of known hosts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_d
    const-string v0, "HashKnownHosts"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, v1, Lcom/jcraft/jsch/KnownHosts;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-virtual {v0, p1, v5}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    :goto_4
    if-eqz v2, :cond_e

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/HostKeyRepository;->a(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_e
    return-void

    :cond_f
    if-ne v8, v3, :cond_10

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnknownHostKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key fingerprint is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostKey has been changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/jcraft/jsch/HostKey;

    invoke-direct {v0, p1, v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->af:Lcom/jcraft/jsch/HostKey;

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_12
    move v2, v0

    goto/16 :goto_3

    :cond_13
    move v0, v2

    goto/16 :goto_2
.end method

.method private b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v0, v0, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    :goto_0
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v1, p1, Lcom/jcraft/jsch/Buffer;->d:I

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->u:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->i()V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->t:[B

    invoke-static {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a([B[B)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Algorithm negotiation fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->u:[B

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->r:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->s:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->u:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->t:[B

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Lcom/jcraft/jsch/Packet;)V
    .locals 2

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->a(Lcom/jcraft/jsch/Packet;)V

    iget v0, p0, Lcom/jcraft/jsch/Session;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->D:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static e(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    const/4 v2, 0x0

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->a()I

    move-result v4

    new-array v4, v4, [B

    invoke-interface {v0, v2, v3, v4}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x6

    :try_start_1
    const-string v1, "compression_level"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "zlib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->Q:Z

    if-eqz v1, :cond_0

    const-string v1, "zlib@openssh.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Compression;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Compression;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckCiphers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_4
    aget-object v5, v4, v0

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Session;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private i()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cipher.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "cipher.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CheckCiphers"

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "There are not any available ciphers."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-boolean v9, p0, Lcom/jcraft/jsch/Session;->aa:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jcraft/jsch/Session;->Z:J

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v4, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v6, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v7, v2, Lcom/jcraft/jsch/Buffer;->c:I

    const/16 v8, 0x10

    invoke-interface {v5, v6, v7, v8}, Lcom/jcraft/jsch/Random;->a([BII)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/jcraft/jsch/Buffer;->b(I)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "kex"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v4, "server_host_key"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "mac.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "compression.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.c2s"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const-string v0, "lang.s2c"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v2, v10}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->c(I)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->t:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->t:[B

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_KEXINIT sent"

    invoke-interface {v0, v9, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 11

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v3, p0, Lcom/jcraft/jsch/Session;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v4, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_1
    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int v4, v0, v1

    const/4 v0, 0x5

    if-lt v4, v0, :cond_2

    const/high16 v0, 0x40000

    if-le v4, v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v5, 0x40000

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_3
    add-int/lit8 v0, v4, 0x4

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    sub-int v8, v0, v1

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    new-array v0, v0, [B

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_4
    iget v0, p0, Lcom/jcraft/jsch/Session;->ab:I

    rem-int v0, v8, v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad packet length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    iget v1, p0, Lcom/jcraft/jsch/Session;->ab:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_6
    if-lez v8, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v0, v8

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v6, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v7, p0, Lcom/jcraft/jsch/Session;->ab:I

    iget-object v9, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget v10, p0, Lcom/jcraft/jsch/Session;->ab:I

    invoke-interface/range {v5 .. v10}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->C:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->I:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/MAC;->a([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->J:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/IO;->c([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->I:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->J:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 v0, 0x40000

    if-le v8, v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAC Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->E:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->G:Lcom/jcraft/jsch/MAC;

    const/high16 v0, 0x40000

    sub-int v5, v0, v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/jcraft/jsch/Session;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->C:I

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->p:[I

    const/4 v2, 0x0

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v3, v3, -0x5

    sub-int v0, v3, v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->p:[I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Compression;->a([BI[I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object v0, p1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p1, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_a
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_DISCONNECT: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "fail in inflater"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    return-object p1

    :cond_d
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->l()V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel;->f(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x34

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->L:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->g(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is already connected"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "random"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Random;

    sput-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    invoke-static {v0}, Lcom/jcraft/jsch/Packet;->a(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connecting to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-static {v0, v1, p1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    :goto_1
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Connection established"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->a(Lcom/jcraft/jsch/Session;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->s:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->s:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jcraft/jsch/IO;->a([BII)V

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_6
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v2, v2

    if-lt v1, v2, :cond_a

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_2
    if-gez v1, :cond_c

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "connection is closed by foreign host"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->aa:Z

    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->P:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    const-string v2, "en"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->h:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->P:Z

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_28

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->n:[B

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->n:[B

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/SocketFactory;->b(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->i:Lcom/jcraft/jsch/SocketFactory;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v4, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/jcraft/jsch/Proxy;->a(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v2}, Lcom/jcraft/jsch/Proxy;->b()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->c()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->a()I

    move-result v0

    if-gez v0, :cond_b

    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->b:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_6

    move v12, v0

    move v0, v1

    move v1, v12

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, -0x1

    :cond_d
    const/4 v1, 0x3

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, 0x48

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_5

    :cond_e
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x31

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    const/16 v2, 0x39

    if-eq v1, v2, :cond_10

    :cond_f
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid server\'s version string"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->r:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->r:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remote version string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->r:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local version string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->s:[B

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->i()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_KEXINIT received"

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    if-ne v1, v2, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jcraft/jsch/Session;->Z:J

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(kex): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyExchange;->b()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    if-nez v1, :cond_14

    :try_start_8
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-direct {p0, v1, v2, v0}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->j()V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_19

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SSH_MSG_NEWKEYS received"

    invoke-interface {v1, v2, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_17
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v3, 0x0

    :try_start_a
    const-string v0, "userauth.none"

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    move-result v4

    const-string v1, "PreferredAuthentications"

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    invoke-static {v2, v1}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v4, :cond_2e

    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;

    invoke-virtual {v0}, Lcom/jcraft/jsch/UserAuthNone;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_18
    :goto_4
    const-string v0, ","

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v0

    move-object v6, v2

    move v0, v1

    move v2, v4

    :goto_5
    if-nez v2, :cond_2d

    if-eqz v7, :cond_2d

    array-length v1, v7

    if-lt v0, v1, :cond_1a

    move v0, v3

    :goto_6
    if-nez v2, :cond_23

    if-eqz v0, :cond_22

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth cancel"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Session;->aa:Z

    throw v0

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid protocol(newkyes): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->g:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    add-int/lit8 v1, v0, 0x1

    aget-object v8, v7, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_7
    array-length v9, v5

    if-lt v4, v9, :cond_1b

    :goto_8
    if-nez v0, :cond_1d

    move v0, v1

    goto :goto_5

    :cond_1b
    aget-object v9, v5, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v0, 0x1

    goto :goto_8

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1d
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v4, "Authentications that can continue: "

    add-int/lit8 v0, v1, -0x1

    move v12, v0

    move-object v0, v4

    move v4, v12

    :goto_9
    array-length v9, v7

    if-lt v4, v9, :cond_1f

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v4, v9, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Next authentication method: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1e
    const/4 v4, 0x0

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "userauth."

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/UserAuth;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_a
    if-eqz v0, :cond_2c

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z
    :try_end_d
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_e
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Authentication succeeded ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V
    :try_end_e
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_e .. :try_end_e} :catch_c
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move v2, v0

    move v0, v1

    goto/16 :goto_5

    :cond_1f
    :try_start_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v7, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v4, 0x1

    array-length v10, v7

    if-ge v9, v10, :cond_20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "failed to load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_21
    move-object v0, v4

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move v0, v2

    :goto_b
    const/4 v3, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_5

    :catch_6
    move-exception v0

    :goto_c
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    invoke-static {v4, v0}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x0

    move-object v5, v3

    move-object v6, v4

    move v3, v1

    goto/16 :goto_5

    :catch_7
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    move v0, v2

    :goto_e
    move v2, v0

    move v0, v3

    goto/16 :goto_6

    :cond_22
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "Auth fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-gtz p1, :cond_24

    iget v0, p0, Lcom/jcraft/jsch/Session;->O:I

    if-lez v0, :cond_25

    :cond_24
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget v1, p0, Lcom/jcraft/jsch/Session;->O:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->Q:Z

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connect thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_26
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_27
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->n:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->n:[B

    return-void

    :catchall_2
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_28
    :try_start_13
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_29

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_29
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session.connect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto/16 :goto_e

    :catch_b
    move-exception v2

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    goto/16 :goto_c

    :catch_c
    move-exception v2

    goto/16 :goto_b

    :cond_2a
    move v0, v1

    goto/16 :goto_d

    :cond_2b
    move v2, v0

    move v0, v1

    goto/16 :goto_5

    :cond_2c
    move v0, v1

    goto/16 :goto_5

    :cond_2d
    move v0, v3

    goto/16 :goto_6

    :cond_2e
    move-object v2, v1

    goto/16 :goto_4
.end method

.method a(Lcom/jcraft/jsch/Channel;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->b(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public a(Lcom/jcraft/jsch/Packet;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->K:Lcom/jcraft/jsch/Compression;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v1, v3, v4, v5}, Lcom/jcraft/jsch/Compression;->a([BII)I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->c:I

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/Session;->ac:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    sget-object v1, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->c:I

    sub-int/2addr v5, v0

    invoke-interface {v3, v4, v5, v0}, Lcom/jcraft/jsch/Random;->a([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget v1, p0, Lcom/jcraft/jsch/Session;->D:I

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/MAC;->a([BI)V

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->F:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->a(I)V

    goto :goto_0
.end method

.method a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v6, v0

    :goto_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_1

    cmp-long v0, v6, v10

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/jcraft/jsch/Session;->Z:J

    sub-long/2addr v0, v3

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-enter p2

    :try_start_1
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p2, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->k()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "channel is broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    const/4 v0, -0x1

    monitor-enter p2

    :try_start_4
    iget-wide v3, p2, Lcom/jcraft/jsch/Channel;->h:J

    cmp-long v1, v3, v10

    if-lez v1, :cond_c

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v3, v0, v3

    if-lez v3, :cond_b

    int-to-long v0, p3

    move-wide v4, v0

    :goto_2
    int-to-long v0, p3

    cmp-long v0, v4, v0

    if-eqz v0, :cond_a

    long-to-int v1, v4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->H:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jsch/Packet;->a(II)I

    move-result v3

    :goto_4
    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v1

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    int-to-long v8, p3

    sub-long/2addr v8, v4

    long-to-int p3, v8

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->h:J

    sub-long v4, v8, v4

    iput-wide v4, p2, Lcom/jcraft/jsch/Channel;->h:J

    const/4 v4, 0x1

    :goto_5
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    if-eqz p3, :cond_2

    invoke-virtual {p1, v1, v0, v3, p3}, Lcom/jcraft/jsch/Packet;->a(BIII)V

    :cond_6
    monitor-enter p2

    :try_start_5
    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v0, :cond_8

    monitor-exit p2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_8
    :try_start_7
    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v3, p3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_9

    iget-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/jcraft/jsch/Channel;->h:J

    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :cond_9
    :try_start_8
    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    const-wide/16 v0, 0x64

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    :goto_6
    monitor-exit p2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/jcraft/jsch/Channel;->s:I

    goto :goto_6

    :catchall_3
    move-exception v0

    iget v1, p2, Lcom/jcraft/jsch/Channel;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Lcom/jcraft/jsch/Channel;->s:I

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    move v3, v2

    goto :goto_4

    :cond_b
    move-wide v4, v0

    goto :goto_2

    :cond_c
    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_5
.end method

.method public a(Lcom/jcraft/jsch/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    return-void
.end method

.method a()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->v:[B

    return-object v0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnecting from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->a(Lcom/jcraft/jsch/Session;)V

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c(Lcom/jcraft/jsch/Session;)V

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->R:Ljava/lang/Thread;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->M:Lcom/jcraft/jsch/IO;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->N:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->b(Lcom/jcraft/jsch/Session;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->d()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->U:Lcom/jcraft/jsch/Proxy;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Session;->l:I

    return-void
.end method

.method public b(Lcom/jcraft/jsch/Packet;)V
    .locals 7

    const/16 v6, 0x1f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->e()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->c(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jcraft/jsch/Session;->Z:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "timeout in wating for rekeying process."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p1, Lcom/jcraft/jsch/Packet;->a:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/jcraft/jsch/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V:Lcom/jcraft/jsch/UserInfo;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->T:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->P:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Session;->O:I

    return v0
.end method

.method public f()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    sget-object v2, Lcom/jcraft/jsch/Session;->ae:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 13

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p0, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v7, Lcom/jcraft/jsch/Packet;

    invoke-direct {v7, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    new-array v8, v1, [I

    new-array v9, v1, [I

    move-object v4, v5

    move-object v3, v0

    move v0, v2

    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/jcraft/jsch/Session;->P:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->q:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->P:Z

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    :try_start_3
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyExchange;->b()I

    move-result v3

    if-ne v3, v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/jcraft/jsch/Session;->Z:J

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/KeyExchange;->a(Lcom/jcraft/jsch/Buffer;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "verify: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/jcraft/jsch/Session;->aa:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caught an exception, leaving main loop due to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_4
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-nez v10, :cond_2

    iget v10, p0, Lcom/jcraft/jsch/Session;->Y:I

    if-ge v0, v10, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v10, p0, Lcom/jcraft/jsch/Session;->aa:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/jcraft/jsch/Session;->Y:I

    if-ge v0, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    throw v6

    :cond_4
    sparse-switch v0, :sswitch_data_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown SSH message type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    invoke-direct {p0, v6}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v0

    move-object v4, v0

    move-object v3, v6

    move v0, v2

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->j()V

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    move v0, v2

    move-object v4, v5

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v3

    if-nez v0, :cond_5

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    aget v10, v9, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v10, :cond_6

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    :try_start_5
    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v0, v3, v10, v11}, Lcom/jcraft/jsch/Channel;->a([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v3, 0x0

    :try_start_6
    aget v3, v9, v3

    iget v10, v0, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v3, v10, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v0, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_14

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5d

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v0, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v3, v10

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->d(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->j()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_3
    :try_start_8
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6, v8, v9}, Lcom/jcraft/jsch/Buffer;->a([I[I)[B

    move-result-object v3

    if-nez v0, :cond_7

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    aget v10, v9, v10

    if-nez v10, :cond_8

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-virtual {v0, v3, v10, v11}, Lcom/jcraft/jsch/Channel;->b([BII)V

    const/4 v3, 0x0

    aget v3, v9, v3

    iget v10, v0, Lcom/jcraft/jsch/Channel;->f:I

    sub-int v3, v10, v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->d(I)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->f:I

    iget v10, v0, Lcom/jcraft/jsch/Channel;->e:I

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_14

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x5d

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->e:I

    iget v10, v0, Lcom/jcraft/jsch/Channel;->f:I

    sub-int/2addr v3, v10

    invoke-virtual {v6, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    iget v3, v0, Lcom/jcraft/jsch/Channel;->e:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->d(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->f(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->f()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel;->j()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v3

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v12

    invoke-virtual {v0, v10, v11}, Lcom/jcraft/jsch/Channel;->a(J)V

    invoke-virtual {v0, v12}, Lcom/jcraft/jsch/Channel;->g(I)V

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->a(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v3

    iput v3, v0, Lcom/jcraft/jsch/Channel;->p:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jcraft/jsch/Channel;->n:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jcraft/jsch/Channel;->m:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Channel;->a(I)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v10

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    :goto_3
    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v11

    if-eqz v11, :cond_14

    const/16 v0, 0x64

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v10

    const-string v12, "exit-status"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/jcraft/jsch/Channel;->h(I)V

    const/16 v0, 0x63

    :cond_a
    if-eqz v3, :cond_14

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v11}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto :goto_3

    :sswitch_a
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, "forwarded-tcpip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "x11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->b:Z

    if-nez v3, :cond_e

    :cond_c
    const-string v3, "auth-agent@openssh.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->c:Z

    if-nez v3, :cond_e

    :cond_d
    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x5c

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    sget-object v0, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :sswitch_b
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_e
    invoke-static {v0}, Lcom/jcraft/jsch/Channel;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v3, v6}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel;->b()V

    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Channel "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->j:Z

    invoke-virtual {v10, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_f
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x1

    iput v3, v0, Lcom/jcraft/jsch/Channel;->q:I

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jcraft/jsch/Channel;->a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    iput v3, v0, Lcom/jcraft/jsch/Channel;->q:I

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->c()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->e()I

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_4
    if-eqz v0, :cond_14

    invoke-virtual {v7}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x52

    invoke-virtual {v6, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto :goto_4

    :sswitch_e
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a()Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v10, p0, Lcom/jcraft/jsch/Session;->ad:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/16 v11, 0x51

    if-ne v0, v11, :cond_13

    move v0, v1

    :goto_5
    invoke-virtual {v10, v0}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->a(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :cond_14
    move v0, v2

    move-object v3, v6

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x50 -> :sswitch_d
        0x51 -> :sswitch_e
        0x52 -> :sswitch_e
        0x5a -> :sswitch_a
        0x5b -> :sswitch_7
        0x5c -> :sswitch_8
        0x5d -> :sswitch_4
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_5
        0x61 -> :sswitch_6
        0x62 -> :sswitch_9
        0x63 -> :sswitch_b
        0x64 -> :sswitch_c
    .end sparse-switch
.end method
