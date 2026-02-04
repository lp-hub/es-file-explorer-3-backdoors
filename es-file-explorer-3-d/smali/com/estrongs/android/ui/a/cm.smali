.class Lcom/estrongs/android/ui/a/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/ci;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cm;->a:Lcom/estrongs/android/ui/a/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cm;->a:Lcom/estrongs/android/ui/a/ci;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/ci;->a(Lcom/estrongs/android/ui/a/ci;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
