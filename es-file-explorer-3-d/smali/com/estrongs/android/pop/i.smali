.class Lcom/estrongs/android/pop/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPrivacty(Lcom/estrongs/android/util/TypedMap;Z)V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/c;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v2, v2, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    check-cast v0, Lcom/estrongs/a/a/f;

    iput-object p1, v0, Lcom/estrongs/a/a/f;->b:Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/a/a;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/i;->a:Lcom/estrongs/android/pop/h;

    iget-object v2, v2, Lcom/estrongs/android/pop/h;->a:Lcom/estrongs/a/a/c;

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
