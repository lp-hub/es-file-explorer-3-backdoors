.class Lcom/estrongs/android/ui/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/w;->n()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->e(I)V

    const/4 v0, 0x0

    return v0
.end method
