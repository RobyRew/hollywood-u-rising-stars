.class public Lcom/helpshift/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private a:Lcom/helpshift/app/k;

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private k:Z

.field private l:Lcom/helpshift/f/f;


# direct methods
.method public constructor <init>(Lcom/helpshift/app/k;IILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/helpshift/app/l;->i:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/helpshift/app/l;->j:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 22
    iput-object v0, p0, Lcom/helpshift/app/l;->l:Lcom/helpshift/f/f;

    .line 26
    iput-object p1, p0, Lcom/helpshift/app/l;->a:Lcom/helpshift/app/k;

    .line 27
    iput p2, p0, Lcom/helpshift/app/l;->b:I

    .line 28
    iput p3, p0, Lcom/helpshift/app/l;->c:I

    .line 29
    iput-object p4, p0, Lcom/helpshift/app/l;->d:Ljava/lang/CharSequence;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/helpshift/f/f;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/helpshift/app/l;->l:Lcom/helpshift/f/f;

    .line 272
    return-object p0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/app/l;->k:Z

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/helpshift/app/l;->k:Z

    .line 244
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/helpshift/app/l;->i:Landroid/view/View;

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helpshift/app/l;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/helpshift/app/l;->f:Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/helpshift/app/l;->g:I

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/helpshift/app/l;->a:Lcom/helpshift/app/k;

    invoke-virtual {v0}, Lcom/helpshift/app/k;->a()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/helpshift/app/l;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/helpshift/app/l;->b:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/helpshift/app/l;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/helpshift/app/l;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/helpshift/app/l;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/helpshift/app/l;->k:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/helpshift/app/l;->h:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 232
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 222
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/helpshift/app/l;->i:Landroid/view/View;

    .line 216
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 129
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 149
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 175
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/app/l;->f:Landroid/graphics/drawable/Drawable;

    .line 85
    iput p1, p0, Lcom/helpshift/app/l;->g:I

    .line 86
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/helpshift/app/l;->g:I

    .line 78
    iput-object p1, p0, Lcom/helpshift/app/l;->f:Landroid/graphics/drawable/Drawable;

    .line 79
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 104
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 262
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 195
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 210
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/helpshift/app/l;->a:Lcom/helpshift/app/k;

    invoke-virtual {v0}, Lcom/helpshift/app/k;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/l;->d:Ljava/lang/CharSequence;

    .line 56
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/helpshift/app/l;->d:Ljava/lang/CharSequence;

    .line 50
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/helpshift/app/l;->e:Ljava/lang/CharSequence;

    .line 67
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/helpshift/app/l;->h:Z

    .line 161
    iget-object v0, p0, Lcom/helpshift/app/l;->l:Lcom/helpshift/f/f;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/helpshift/app/l;->l:Lcom/helpshift/f/f;

    invoke-interface {v0, p1}, Lcom/helpshift/f/f;->a(Z)V

    .line 165
    :cond_0
    return-object p0
.end method
