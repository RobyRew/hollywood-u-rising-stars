.class Landroid/support/customtabs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic a:Landroid/support/customtabs/h;

.field final synthetic b:Landroid/support/customtabs/e;


# direct methods
.method constructor <init>(Landroid/support/customtabs/e;Landroid/support/customtabs/h;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/customtabs/f;->b:Landroid/support/customtabs/e;

    iput-object p2, p0, Landroid/support/customtabs/f;->a:Landroid/support/customtabs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/customtabs/f;->b:Landroid/support/customtabs/e;

    iget-object v0, v0, Landroid/support/customtabs/e;->a:Landroid/support/customtabs/CustomTabsService;

    iget-object v1, p0, Landroid/support/customtabs/f;->a:Landroid/support/customtabs/h;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/h;)Z

    .line 98
    return-void
.end method
