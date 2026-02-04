.class Lcom/estrongs/android/view/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bb;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bb;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->A:Lcom/estrongs/fs/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bb;->a:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v1, 0x7f0b023d

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/bb;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;)V

    goto :goto_0
.end method
