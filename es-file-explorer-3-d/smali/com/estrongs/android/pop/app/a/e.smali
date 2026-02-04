.class Lcom/estrongs/android/pop/app/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    new-instance v1, Lcom/estrongs/android/pop/app/a/x;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/a/x;-><init>(Lcom/estrongs/android/pop/app/a/a;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/a;->b:Lcom/estrongs/android/pop/app/a/x;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/a;->b:Lcom/estrongs/android/pop/app/a/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/x;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/e;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->d()V

    const/4 v0, 0x1

    return v0
.end method
