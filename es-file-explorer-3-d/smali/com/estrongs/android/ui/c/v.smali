.class Lcom/estrongs/android/ui/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/v;->a:Lcom/estrongs/android/ui/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/v;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/u;->a(Lcom/estrongs/android/ui/c/u;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/f;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/v;->a:Lcom/estrongs/android/ui/c/u;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/c/u;->c(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/v;->a:Lcom/estrongs/android/ui/c/u;

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/c/u;->h(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/f;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    instance-of v3, v1, Lcom/estrongs/fs/b/q;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    :cond_2
    :goto_1
    const/4 v0, 0x4

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/v;->a:Lcom/estrongs/android/ui/c/u;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/u;->b(Lcom/estrongs/android/ui/c/u;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->resume()V

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/c/f;->a(Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requsestPause()V

    goto :goto_1
.end method
