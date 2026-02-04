.class public final Lcom/estrongs/android/pop/app/ESNetSettingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# instance fields
.field a:Lcom/estrongs/android/pop/q;

.field b:Landroid/preference/CheckBoxPreference;

.field c:Landroid/preference/CheckBoxPreference;

.field d:Landroid/view/View;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field private g:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v1, 0x0

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->setTheme(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201e2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0201e0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->a:Lcom/estrongs/android/pop/q;

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0300c3

    invoke-virtual {v0, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->g:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020201

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0396

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "random_ap"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/estrongs/android/pop/app/af;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/af;-><init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "customized_ap"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/estrongs/android/pop/app/ag;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ag;-><init>(Lcom/estrongs/android/pop/app/ESNetSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aj()Z

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPause()V

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

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onResume()V

    return-void
.end method
