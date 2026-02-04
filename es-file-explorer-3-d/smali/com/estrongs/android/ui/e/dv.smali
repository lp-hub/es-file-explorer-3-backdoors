.class Lcom/estrongs/android/ui/e/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Lcom/estrongs/android/ui/e/dt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dt;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dv;->b:Lcom/estrongs/android/ui/e/dt;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/dv;->a:Lcom/estrongs/fs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPrivacty(Lcom/estrongs/android/util/TypedMap;Z)V
    .locals 2

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dv;->a:Lcom/estrongs/fs/g;

    check-cast v0, Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {v1, v0, p1}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;-><init>(Lcom/estrongs/android/pop/spfs/SPFileObject;Lcom/estrongs/android/util/TypedMap;)V

    new-instance v0, Lcom/estrongs/android/ui/e/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/dw;-><init>(Lcom/estrongs/android/ui/e/dv;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/spfs/task/FlickrEditTask;->execute(Z)V

    goto :goto_0
.end method
