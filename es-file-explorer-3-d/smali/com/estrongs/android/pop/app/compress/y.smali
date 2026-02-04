.class Lcom/estrongs/android/pop/app/compress/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/y;->a:Lcom/estrongs/android/pop/app/compress/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/y;->a:Lcom/estrongs/android/pop/app/compress/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/y;->a:Lcom/estrongs/android/pop/app/compress/x;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/x;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
