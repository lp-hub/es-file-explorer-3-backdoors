.class public Lcom/estrongs/fs/impl/local/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/local/q;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/local/q;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/Object;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/fs/impl/local/n;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/estrongs/fs/impl/local/n;

.field private static h:Z

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    sput-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/fs/impl/local/h;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->f:Ljava/util/Queue;

    sput-object v1, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    sput-boolean v2, Lcom/estrongs/fs/impl/local/h;->h:Z

    sput v2, Lcom/estrongs/fs/impl/local/h;->i:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "uname -m"

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v3}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object v2, v3, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    const-string v0, "uname -m"

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->b()V

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    iget-object v0, v3, Lcom/estrongs/fs/impl/local/k;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Error"

    const-string v2, "uname result null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uname ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "arm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "386"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "686"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v2, "mips"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Object;[BII)I
    .locals 3

    const-class v2, Lcom/estrongs/fs/impl/local/h;

    monitor-enter v2

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/estrongs/fs/impl/local/l;

    move-object v1, v0

    invoke-static {v1, p3}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;I)I

    move-object v0, p0

    check-cast v0, Lcom/estrongs/fs/impl/local/l;

    move-object v1, v0

    invoke-static {v1, p2}, Lcom/estrongs/fs/impl/local/l;->b(Lcom/estrongs/fs/impl/local/l;I)I

    move-object v0, p0

    check-cast v0, Lcom/estrongs/fs/impl/local/l;

    move-object v1, v0

    invoke-static {v1, p1}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;[B)[B

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->e(Ljava/lang/Object;)V

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->j(Lcom/estrongs/fs/impl/local/l;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Object;JI)J
    .locals 5

    const-class v2, Lcom/estrongs/fs/impl/local/h;

    monitor-enter v2

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/estrongs/fs/impl/local/l;

    move-object v1, v0

    invoke-static {v1, p3}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;I)I

    move-object v0, p0

    check-cast v0, Lcom/estrongs/fs/impl/local/l;

    move-object v1, v0

    invoke-static {v1, p1, p2}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;J)J

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->f(Ljava/lang/Object;)V

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->k(Lcom/estrongs/fs/impl/local/l;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static a(Z)Lcom/estrongs/fs/impl/local/n;
    .locals 6

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/fs/impl/local/h;->f:Ljava/util/Queue;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/n;

    const-string v3, "get su shell from queue"

    invoke-static {v3}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    if-eqz p0, :cond_4

    const-string v2, "try to create su proc"

    invoke-static {v2}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    :try_start_2
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "su"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/estrongs/fs/impl/local/n;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/local/n;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, v0, Lcom/estrongs/fs/impl/local/n;->c:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, v0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    iget-object v2, v0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    const-string v4, "echo successfully\n"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/fs/impl/local/n;->d:Z

    iget-object v2, v0, Lcom/estrongs/fs/impl/local/n;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, v0, Lcom/estrongs/fs/impl/local/n;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_4
    const-string v4, "successfully"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "su response failed:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    :goto_2
    move-object v1, v0

    :goto_3
    return-object v1

    :cond_3
    const-string v2, "successfully get the SU shell proc"

    invoke-static {v2}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to create su proc failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_2

    if-nez p0, :cond_2

    :try_start_5
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream()Z

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/estrongs/fs/impl/local/n;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/local/n;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/estrongs/fs/impl/local/n;->d:Z

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, v0, Lcom/estrongs/fs/impl/local/n;->c:Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, v0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    iput-object v2, v0, Lcom/estrongs/fs/impl/local/n;->a:Ljava/lang/Process;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v2, p0

    if-lez v2, :cond_2

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/impl/local/n;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/n;->a:Ljava/lang/Process;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object p0, v0, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/local/k;->a()Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;J)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    new-array v0, v7, [B

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    ushr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    ushr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lcom/estrongs/fs/impl/local/h;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libestool2.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    sput-object p0, Lcom/estrongs/fs/impl/local/h;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/g;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;J)Z

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/m;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/fs/impl/local/m;->c:I

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/m;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_0

    :try_start_0
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :try_start_1
    invoke-virtual {v10}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v8, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v8, p0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_1
    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long/2addr v3, v0

    int-to-long v5, v2

    add-long v2, v3, v5

    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v9}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/s;->a(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/s;

    move-result-object v0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/fs/impl/local/s;->a(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v9, v0

    move-object v0, v1

    :goto_3
    if-eqz v9, :cond_4

    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_5
    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v9

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->c()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/estrongs/android/util/aw;->a(Ljava/io/InputStream;Ljava/lang/String;I)Z

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v1

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    new-instance v1, Lcom/estrongs/android/util/aj;

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v2, "setExecutable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setReadable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    const-string v2, "755"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/estrongs/fs/impl/local/h;->h:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-ne p1, v2, :cond_3

    if-nez v1, :cond_3

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    if-nez v1, :cond_4

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/estrongs/fs/impl/local/h;->h:Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v3, v1, v4}, Lcom/estrongs/android/util/aw;->a(Ljava/io/InputStream;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    if-eqz v1, :cond_0

    :cond_6
    new-array v1, v2, [Z

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->d(Z)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v3, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-nez v3, :cond_7

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->d(Z)Z

    move-result v2

    aput-boolean v2, v1, v0

    :goto_4
    aget-boolean v0, v1, v0

    goto :goto_0

    :cond_7
    aput-boolean v2, v1, v0

    goto :goto_4

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v1, 0xcf

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, p0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;J)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_8
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/m;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p0}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/m;->b(Lcom/estrongs/fs/impl/local/m;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/fs/impl/local/h;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v3}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object v2, v3, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->b()V

    iget-object v0, v3, Lcom/estrongs/fs/impl/local/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/local/n;)Z
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object p2, v1, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    iput-object v0, v1, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/local/k;->b()V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    new-instance v3, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v3}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object v2, v3, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->b()V

    iget-object v0, v3, Lcom/estrongs/fs/impl/local/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Z

    invoke-static {p0, p1, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    aput-boolean v1, v0, v2

    aget-boolean v0, v0, v2

    return v0
.end method

.method private static a(Ljava/lang/String;ZZ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-static {p0, p1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v5

    if-nez v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_6
    :try_start_4
    new-instance v4, Lcom/estrongs/fs/impl/local/NativeException;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/estrongs/fs/impl/local/NativeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_a
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    throw v0

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static b()I
    .locals 6

    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget v3, Lcom/estrongs/fs/impl/local/h;->i:I

    if-eqz v3, :cond_0

    sget v0, Lcom/estrongs/fs/impl/local/h;->i:I

    :goto_0
    return v0

    :cond_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "arm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    sput v1, Lcom/estrongs/fs/impl/local/h;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->a()I

    move-result v0

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    sget v0, Lcom/estrongs/fs/impl/local/h;->i:I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "386"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "686"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v4, "mips"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v1

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/cpuinfo"

    const-string v5, "r"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "processor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "arm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    sput v1, Lcom/estrongs/fs/impl/local/h;->i:I

    goto :goto_0

    :cond_6
    const-string v5, "x86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "386"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "686"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v2

    goto/16 :goto_0

    :cond_8
    const-string v5, "mips"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v5, "flags"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "features"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    const-string v5, "sse"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v2

    goto/16 :goto_0

    :cond_b
    const-string v5, "thumb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    sput v1, Lcom/estrongs/fs/impl/local/h;->i:I

    goto/16 :goto_0

    :cond_c
    const-string v5, "pentium"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/impl/local/h;->i:I

    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/fs/impl/local/n;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/fs/impl/local/n;->d:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->f:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->f:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    check-cast p0, Lcom/estrongs/fs/impl/local/m;

    const/16 v0, 0xca

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p0, v6, v6, v6}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;III)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {p0, v0, v4, v5}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {p0, v6, v6, v6}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;III)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {p0, v0, v4, v5}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "$-----ESTOOL-END-----$"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "$-----ESTOOL-END-----$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v5, Lcom/estrongs/fs/impl/local/h;->c:Ljava/lang/Object;

    monitor-enter v5

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v5

    :goto_0
    return v1

    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v6

    if-nez v6, :cond_2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :try_start_3
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    const/16 v7, 0x10

    :try_start_4
    invoke-static {v2, v7}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    move v4, v0

    :goto_1
    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v5

    move v1, v0

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_8
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v5

    goto :goto_0

    :catch_2
    move-exception v0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_a
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    :catch_3
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public static b([Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, v4, Lcom/estrongs/fs/impl/local/n;->d:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    :try_start_0
    const-string v3, ""

    move v7, v0

    move-object v0, v3

    move v3, v7

    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_3

    add-int/lit8 v5, v3, 0x2

    aget-object v5, p0, v5

    const-string v6, "rw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "mount -o remount,rw "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, p0, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "mount -o remount,ro "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, p0, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    :goto_4
    move v0, v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_4

    :cond_5
    :try_start_1
    new-instance v3, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v3}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object v4, v3, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->b()V

    iget-object v0, v3, Lcom/estrongs/fs/impl/local/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v3}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v1, :cond_7

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    :goto_5
    throw v0

    :cond_8
    invoke-static {v4}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_5
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 3

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->b(Z)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    div-int/lit8 v5, v0, 0x3

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    new-array v6, v10, [Ljava/lang/String;

    mul-int/lit8 v0, v2, 0x3

    aget-object v0, v4, v0

    aput-object v0, v6, v1

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v4, v0

    aput-object v0, v6, v3

    mul-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    aget-object v0, v4, v0

    aput-object v0, v6, v9

    move v0, v2

    :goto_1
    if-lez v0, :cond_0

    add-int/lit8 v7, v0, -0x1

    mul-int/lit8 v7, v7, 0x3

    aget-object v7, v4, v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v0, -0x1

    mul-int/lit8 v8, v8, 0x3

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v0, -0x1

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v0, -0x1

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v4, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v7, v0, 0x3

    aget-object v8, v6, v1

    aput-object v8, v4, v7

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v6, v3

    aput-object v8, v4, v7

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget-object v6, v6, v9

    aput-object v6, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_2
    array-length v2, v4

    div-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_3

    mul-int/lit8 v2, v0, 0x3

    aget-object v2, v4, v2

    invoke-static {v2, p0}, Lcom/estrongs/android/util/ak;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x3

    aget-object v2, v4, v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v10, [Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v4, v5

    aput-object v5, v2, v1

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v4, v1

    aput-object v1, v2, v3

    aput-object p1, v2, v9

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->b([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget-object v0, v4, v0

    aput-object v0, v2, v9

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static b(Z)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v4, "mount"

    iget-boolean v1, v3, Lcom/estrongs/fs/impl/local/n;->d:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    :try_start_0
    new-instance v5, Lcom/estrongs/fs/impl/local/k;

    invoke-direct {v5}, Lcom/estrongs/fs/impl/local/k;-><init>()V

    iput-object v3, v5, Lcom/estrongs/fs/impl/local/k;->a:Ljava/lang/Object;

    iput-object v4, v5, Lcom/estrongs/fs/impl/local/k;->b:Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/fs/impl/local/k;->c:Ljava/lang/Object;

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, v5, Lcom/estrongs/fs/impl/local/k;->f:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/local/k;->b()V

    iget-object v0, v5, Lcom/estrongs/fs/impl/local/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcom/estrongs/fs/impl/local/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    :goto_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_3

    :cond_5
    :try_start_2
    iget-object v0, v5, Lcom/estrongs/fs/impl/local/k;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_7

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    :goto_4
    move-object v0, v2

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_4

    :cond_7
    :try_start_3
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_8

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_0

    :cond_8
    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    :goto_5
    throw v0

    :cond_9
    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->b(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_5
.end method

.method public static c()I
    .locals 3

    const/high16 v0, 0x7f060000

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const v0, 0x7f060001

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public static c(Ljava/io/InputStream;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static declared-synchronized c(Z)Landroid/net/LocalSocket;
    .locals 7

    const/4 v0, 0x0

    const-class v2, Lcom/estrongs/fs/impl/local/h;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    const-string v4, "connect succ"

    invoke-static {v4}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x50

    invoke-static {v4, v6}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v5}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    sget-object v1, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;)Z

    const-string v1, "connected version mismatch"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v1

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_6
    const-string v3, "return localsocket"

    invoke-static {v3}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_0

    :try_start_7
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->d(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->c(Z)Landroid/net/LocalSocket;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static c(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    check-cast p0, Lcom/estrongs/fs/impl/local/m;

    const/16 v0, 0xcb

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/fs/impl/local/m;->a:I

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    iget v0, p0, Lcom/estrongs/fs/impl/local/m;->b:I

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    iget v0, p0, Lcom/estrongs/fs/impl/local/m;->c:I

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {p0, v4}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/m;->a(Lcom/estrongs/fs/impl/local/m;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static c(Lcom/estrongs/fs/impl/local/n;)Z
    .locals 4

    const/16 v0, 0x5bbe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/n;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "start Rootserver failed"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/io/InputStream;)J
    .locals 7

    const/16 v6, 0x8

    new-array v0, v6, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 14

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/estrongs/fs/c;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    const/16 v0, 0x9

    :try_start_2
    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v1, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_4
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v7, v0

    const/16 v0, 0x20

    shl-long/2addr v7, v0

    int-to-long v9, v6

    add-long v6, v7, v9

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/estrongs/fs/c;

    const-string v11, ""

    invoke-direct {v10, v11}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x64

    if-eq v0, v11, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x65

    if-ne v0, v11, :cond_b

    :cond_6
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->d:Z

    iput-object p0, v10, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    iget-boolean v0, v10, Lcom/estrongs/fs/c;->d:Z

    if-eqz v0, :cond_c

    const-wide/16 v6, 0x0

    iput-wide v6, v10, Lcom/estrongs/fs/c;->e:J

    :goto_2
    int-to-long v6, v8

    iput-wide v6, v10, Lcom/estrongs/fs/c;->j:J

    iget-wide v6, v10, Lcom/estrongs/fs/c;->j:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    iput-wide v6, v10, Lcom/estrongs/fs/c;->j:J

    iput v9, v10, Lcom/estrongs/fs/c;->q:I

    const/4 v0, 0x1

    const/16 v6, 0xa

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    iget-object v0, v10, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_f

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->m:Z

    iget-object v0, v10, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v10, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x72

    if-ne v0, v6, :cond_10

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->k:Z

    iget-object v0, v10, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x77

    if-ne v0, v6, :cond_11

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->l:Z

    :goto_6
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x6c

    if-eq v0, v6, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_8

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/estrongs/fs/c;->n:Z

    :cond_8
    const/4 v0, 0x0

    aput-object v10, v3, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_a
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_7
    const/4 v0, 0x0

    aget-object v0, v3, v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    :try_start_6
    iput-wide v6, v10, Lcom/estrongs/fs/c;->e:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_8
    const/4 v0, 0x0

    if-eqz v2, :cond_d

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_e
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    :try_start_8
    iget-object v0, v10, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x72

    if-ne v0, v6, :cond_15

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->k:Z

    iget-object v0, v10, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x77

    if-ne v0, v6, :cond_16

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, v10, Lcom/estrongs/fs/c;->l:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v2, :cond_13

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_14
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_c
    throw v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_b

    :catch_4
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_8

    :catch_5
    move-exception v1

    move-object v1, v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    const/16 v0, 0xc8

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/impl/local/l;->a(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/local/l;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_2
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {p0, v4}, Lcom/estrongs/fs/impl/local/l;->a(Z)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {p0, v3}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/local/l;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static d(Z)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->e()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "su file not exist"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_0

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v3, 0x1

    :try_start_3
    sput-boolean v3, Lcom/estrongs/fs/impl/local/h;->h:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    sget-boolean v0, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v0, :cond_2

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->a(Z)Lcom/estrongs/fs/impl/local/n;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_4

    new-instance v3, Lcom/estrongs/android/util/aj;

    invoke-direct {v3, v1}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v1, "setExecutable"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setReadable"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    const-string v3, "777"

    invoke-static {v1, v3, v2}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/local/n;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "chmod estool succ"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    :goto_3
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Lcom/estrongs/fs/impl/local/n;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "start root server failed"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    :goto_4
    const-string v1, "ES"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SU Check result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/estrongs/fs/impl/local/h;->h:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SU Check result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/estrongs/fs/impl/local/h;->h:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/estrongs/fs/impl/local/h;->h:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_8

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_8

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    goto/16 :goto_0

    :cond_5
    :try_start_5
    const-string v1, "chmod estool failed"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/estrongs/fs/impl/local/h;->h:Z

    const-string v3, "NativeExecuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NativeExecuter SecurityException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NativeExecuter SecurityException"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_b

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_b

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    goto/16 :goto_0

    :cond_6
    :try_start_7
    const-string v1, "start root server succ, try connect"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    const-string v1, "NativeExecuter Exception"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_c

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_c

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    goto/16 :goto_0

    :cond_7
    :try_start_9
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_8
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :cond_9
    :try_start_a
    const-string v1, "create su shell failed 2"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_a

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_a

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_d

    sget-boolean v1, Lcom/estrongs/fs/impl/local/h;->h:Z

    if-eqz v1, :cond_d

    sput-object v2, Lcom/estrongs/fs/impl/local/h;->g:Lcom/estrongs/fs/impl/local/n;

    :goto_5
    throw v0

    :cond_d
    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->a(Lcom/estrongs/fs/impl/local/n;)V

    goto :goto_5

    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v4, 0xa

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v1, Lcom/estrongs/fs/impl/local/p;

    invoke-direct {v1, v5, v3, v2}, Lcom/estrongs/fs/impl/local/p;-><init>(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_7

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_0

    if-eqz v3, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_9
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    if-nez v0, :cond_c

    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_b
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_c
    throw v1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private static e(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, -0x1

    const/16 v0, 0xb

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->b(Lcom/estrongs/fs/impl/local/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Lcom/estrongs/fs/impl/local/l;->a(I)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->d(Lcom/estrongs/fs/impl/local/l;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/local/l;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/fs/impl/local/l;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-lez v0, :cond_3

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->e(Lcom/estrongs/fs/impl/local/l;)[B

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->f(Lcom/estrongs/fs/impl/local/l;)I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot finish reading data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sub-int/2addr v0, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/local/l;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static e()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "/system/xbin/su"

    aput-object v0, v3, v1

    const-string v0, "/system/sbin/su"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "/vendor/bin/su"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "/sbin/su"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :catch_0
    move-exception v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/m;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/local/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/local/m;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/local/i;)V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)V
    .locals 7

    const-wide/16 v5, -0x1

    const/16 v0, 0xc9

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->b(Lcom/estrongs/fs/impl/local/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/estrongs/fs/impl/local/l;->a(J)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->g(Lcom/estrongs/fs/impl/local/l;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;J)V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->h(Lcom/estrongs/fs/impl/local/l;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, Lcom/estrongs/fs/impl/local/l;->a(J)V

    goto :goto_0
.end method

.method public static f()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->c()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    packed-switch v5, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_0
    cmp-long v2, v6, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    cmp-long v2, v6, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/Object;)V
    .locals 2

    check-cast p0, Lcom/estrongs/fs/impl/local/l;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->b(Lcom/estrongs/fs/impl/local/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/l;->a(Lcom/estrongs/fs/impl/local/l;Z)Z

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/l;->c(Lcom/estrongs/fs/impl/local/l;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static h()V
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/estrongs/fs/impl/local/l;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/impl/local/l;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->i(Lcom/estrongs/fs/impl/local/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static i()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v4, 0xb

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-static {v2, v4}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v1, Lcom/estrongs/fs/impl/local/o;

    invoke-direct {v1, v5, v3, v2}, Lcom/estrongs/fs/impl/local/o;-><init>(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_7

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_7
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_9
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    if-nez v0, :cond_c

    if-eqz v3, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_b
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    throw v1

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v0

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v1

    goto/16 :goto_0
.end method

.method public static j()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->n()Z

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget-object v0, v0, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static k()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->b(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/comm/su_port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/estrongs/fs/impl/local/h;->c:Ljava/lang/Object;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v4

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v5

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    const/16 v0, 0x11

    :try_start_3
    invoke-static {v2, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, p0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/io/InputStream;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v4

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_6
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v4

    goto :goto_0

    :catch_2
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    :goto_3
    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    :catch_3
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static declared-synchronized m()Landroid/net/LocalSocket;
    .locals 2

    const-class v0, Lcom/estrongs/fs/impl/local/h;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/estrongs/fs/impl/local/h;->c(Z)Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n()Z
    .locals 10

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xcc

    invoke-static {}, Lcom/estrongs/fs/impl/local/h;->m()Landroid/net/LocalSocket;

    move-result-object v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v1, ""

    :try_start_0
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v5, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    const/16 v0, 0x1388

    invoke-static {v5, v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/io/OutputStream;I)V

    const/16 v0, 0x400

    new-array v5, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-gtz v1, :cond_2

    :goto_2
    sget-object v1, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v0, v3

    :goto_3
    array-length v4, v1

    if-ge v0, v4, :cond_4

    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v1}, Ljava/lang/String;-><init>([BII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_4
    new-instance v5, Lcom/estrongs/fs/impl/local/q;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/local/q;-><init>(Lcom/estrongs/fs/impl/local/i;)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/estrongs/fs/impl/local/q;->a:I

    sget-object v6, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/fs/impl/local/q;->b:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/estrongs/fs/impl/local/q;->a:I

    sget-object v4, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_4
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v8, :cond_5

    move v2, v3

    goto/16 :goto_0

    :cond_5
    new-instance v4, Lcom/estrongs/fs/impl/local/j;

    invoke-direct {v4}, Lcom/estrongs/fs/impl/local/j;-><init>()V

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    aget-object v0, v5, v3

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_6
    array-length v0, v5

    if-ge v1, v0, :cond_7

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_6

    aget-object v0, v5, v1

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v7, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    if-eq v7, v0, :cond_6

    sget-object v6, Lcom/estrongs/fs/impl/local/h;->a:Ljava/util/List;

    aget-object v0, v5, v1

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    aget-object v0, v5, v3

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_7
    array-length v0, v5

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_8

    aget-object v0, v5, v1

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v4, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    sget-object v0, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    iget v0, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    if-eq v4, v0, :cond_8

    sget-object v3, Lcom/estrongs/fs/impl/local/h;->b:Ljava/util/List;

    aget-object v0, v5, v1

    check-cast v0, Lcom/estrongs/fs/impl/local/q;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :catch_2
    move-exception v1

    goto/16 :goto_5
.end method

.method private static o()Ljava/lang/String;
    .locals 11

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x44800000    # 1024.0f

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    const-string v0, "/sdcard"

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v1, v0, v10

    aget-wide v3, v0, v5

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v9

    float-to-double v1, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    aget-wide v5, v0, v5

    mul-long/2addr v3, v5

    long-to-float v0, v3

    div-float/2addr v0, v9

    float-to-double v3, v0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "T: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-double/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-double v2, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
