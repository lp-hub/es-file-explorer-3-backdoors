.class Lcom/estrongs/android/pop/app/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aq;->b:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/aq;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/aq;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
