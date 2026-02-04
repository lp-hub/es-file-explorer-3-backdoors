.class Lcom/estrongs/android/ui/e/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/af;

.field final synthetic b:Lcom/estrongs/android/ui/e/fa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/fa;Lcom/estrongs/android/pop/app/a/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fb;->b:Lcom/estrongs/android/ui/e/fa;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/fb;->a:Lcom/estrongs/android/pop/app/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/fb;->b:Lcom/estrongs/android/ui/e/fa;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fb;->a:Lcom/estrongs/android/pop/app/a/af;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
