.class public Lcom/estrongs/android/ui/preference/CustomListPreference;
.super Landroid/preference/ListPreference;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/CustomListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->b:I

    return p1
.end method

.method private b()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/ui/b/aq;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->b()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->b:I

    new-instance v2, Lcom/estrongs/android/ui/preference/a;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/a;-><init>(Lcom/estrongs/android/ui/preference/CustomListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->a:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->a(Lcom/estrongs/android/ui/b/aq;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/CustomListPreference;->a:Lcom/estrongs/android/ui/b/ag;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/CustomListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    goto :goto_0
.end method
