.class public Lcom/estrongs/android/pop/app/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/b/k;->a:J

    iput-wide p3, p0, Lcom/estrongs/android/pop/app/b/k;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)Z
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/b/k;->a:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/b/k;->a:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v0, v1

    :goto_1
    iget-wide v5, p0, Lcom/estrongs/android/pop/app/b/k;->b:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/estrongs/android/pop/app/b/k;->b:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
