.class Lcom/estrongs/android/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/s;->b:Lcom/estrongs/android/view/n;

    iput-object p2, p0, Lcom/estrongs/android/view/s;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
