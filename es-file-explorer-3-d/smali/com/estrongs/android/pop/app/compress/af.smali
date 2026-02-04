.class Lcom/estrongs/android/pop/app/compress/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/af;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f080037

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/af;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->j(Lcom/estrongs/android/pop/app/compress/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/af;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->k(Lcom/estrongs/android/pop/app/compress/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f080035

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/af;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->j(Lcom/estrongs/android/pop/app/compress/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/af;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->k(Lcom/estrongs/android/pop/app/compress/z;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
