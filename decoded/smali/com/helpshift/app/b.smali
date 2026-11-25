.class Lcom/helpshift/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic b:Lcom/helpshift/app/ActionBarHelperBase;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/helpshift/app/b;->b:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/b;->a:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/helpshift/app/b;->b:Lcom/helpshift/app/ActionBarHelperBase;

    iget-boolean v0, v0, Lcom/helpshift/app/ActionBarHelperBase;->b:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/helpshift/app/b;->b:Lcom/helpshift/app/ActionBarHelperBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelperBase;->a(Landroid/view/MenuItem;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/b;->b:Lcom/helpshift/app/ActionBarHelperBase;

    iget-object v0, v0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/app/b;->a:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    goto :goto_0
.end method
