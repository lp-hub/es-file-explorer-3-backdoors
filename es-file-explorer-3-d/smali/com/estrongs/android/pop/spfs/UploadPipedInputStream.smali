.class public Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;
.super Ljava/io/PipedInputStream;


# instance fields
.field private count:J

.field private length:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    iput-wide p1, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->length:J

    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I

    move-result v0

    iget-wide v1, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    iget-wide v1, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    iget-wide v3, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->count:J

    iget-wide v3, p0, Lcom/estrongs/android/pop/spfs/UploadPipedInputStream;->length:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
