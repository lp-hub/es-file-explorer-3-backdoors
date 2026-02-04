.class Lcom/estrongs/android/ui/e/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/al;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/al;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/e/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/am;-><init>(Lcom/estrongs/android/ui/e/al;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    const/4 v0, 0x0

    return v0
.end method
