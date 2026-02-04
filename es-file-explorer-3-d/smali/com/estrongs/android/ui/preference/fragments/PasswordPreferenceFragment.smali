.class public Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    return-object v0
.end method

.method private a()V
    .locals 6

    const v5, 0x7f08026d

    const/16 v4, 0x8

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0296

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ap;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/ap;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ao;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/ao;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08026a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080271

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080274

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029d

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080270

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029c

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080273

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029e

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method private a(I)V
    .locals 6

    const v5, 0x7f08026d

    const/16 v4, 0x8

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0298

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ar;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/preference/fragments/ar;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/aq;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08026a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080271

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080274

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029d

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080270

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029c

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080273

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029e

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 6

    const v4, 0x7f08026d

    const/16 v5, 0x8

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/ak;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/preference/fragments/ak;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;I)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/as;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/as;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030082

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08026a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080272

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080271

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080274

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029d

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080270

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f080273

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b029e

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "net_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    const-string v0, "net_passwd_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    const-string v0, "start_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    const-string v0, "hided_dirfiles_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/aj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/aj;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/al;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/am;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->b:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/an;-><init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    return-void
.end method
