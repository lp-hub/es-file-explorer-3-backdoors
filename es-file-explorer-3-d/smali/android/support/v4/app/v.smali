.class public Landroid/support/v4/app/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/app/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/z;

    invoke-direct {v0}, Landroid/support/v4/app/z;-><init>()V

    sput-object v0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/x;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/app/y;

    invoke-direct {v0}, Landroid/support/v4/app/y;-><init>()V

    sput-object v0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/x;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/x;
    .locals 1

    sget-object v0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/x;

    return-object v0
.end method
