.class public Lcom/estrongs/android/ui/preference/RecyclePreference;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "enable_recycle"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->aD()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->setTheme(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/RecyclePreference;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0300c3

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201b7

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->a()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/RecyclePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
