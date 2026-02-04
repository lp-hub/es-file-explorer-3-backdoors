.class public Lcom/estrongs/android/ui/pcs/aw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/ui/pcs/aw;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/pcs/v;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/estrongs/android/ui/pcs/d;

.field private g:Z

.field private h:Lcom/estrongs/android/ui/pcs/v;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->e:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/aw;->g:Z

    iput v1, p0, Lcom/estrongs/android/ui/pcs/aw;->b:I

    return-void
.end method

.method public static a()Lcom/estrongs/android/ui/pcs/aw;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/pcs/aw;->a:Lcom/estrongs/android/ui/pcs/aw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/aw;

    invoke-direct {v0}, Lcom/estrongs/android/ui/pcs/aw;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/pcs/aw;->a:Lcom/estrongs/android/ui/pcs/aw;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/pcs/aw;->a:Lcom/estrongs/android/ui/pcs/aw;

    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/pcs/aw;->a:Lcom/estrongs/android/ui/pcs/aw;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/estrongs/android/ui/pcs/aw;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/aw;->g:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/aw;->f:Lcom/estrongs/android/ui/pcs/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/aw;->h:Lcom/estrongs/android/ui/pcs/v;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/aw;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/aw;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/pcs/aw;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/aw;->b:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/estrongs/android/ui/pcs/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->h:Lcom/estrongs/android/ui/pcs/v;

    return-object v0
.end method

.method public k()Lcom/estrongs/android/ui/pcs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aw;->f:Lcom/estrongs/android/ui/pcs/d;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/aw;->g:Z

    return v0
.end method
