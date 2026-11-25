.class public Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/CloseOverlayListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 197
    if-lez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method private setViewWithSize(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const v1, 0x3f4ccccd    # 0.8f

    .line 139
    invoke-direct {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getStatusBarHeight()I

    move-result v2

    .line 141
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 142
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v6, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 144
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 146
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 150
    :cond_0
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_1

    .line 152
    const/high16 v0, 0x3f000000    # 0.5f

    move v2, v0

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "modal_overlay_container"

    invoke-static {v0, v3}, Lcom/amazon/ags/html5/util/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->setContentView(I)V

    .line 161
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "modal_overlay_container"

    invoke-static {v0, v3, v4}, Lcom/amazon/ags/html5/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 182
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 183
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "gc_overlay_spinner"

    invoke-static {v1, v2}, Lcom/amazon/ags/html5/util/ResourceUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 185
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, -0x20

    div-int/lit8 v2, v2, 0x2

    iget v3, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, -0x20

    div-int/lit8 v3, v3, 0x2

    iget v4, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v4, -0x20

    div-int/lit8 v4, v4, 0x2

    iget v5, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v5, v5, -0x20

    div-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 189
    iget v0, v6, Landroid/graphics/Point;->x:I

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    iget v0, v6, Landroid/graphics/Point;->y:I

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    sget-object v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View size set to width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 157
    :cond_1
    const v0, 0x3f333333    # 0.7f

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 168
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->setContentView(Landroid/view/View;)V

    .line 175
    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    sub-int v2, v3, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 177
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    iget v1, v6, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1
.end method


# virtual methods
.method public closeOverlay()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getInstance()Lcom/amazon/ags/html5/factory/ServiceFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getWebViewFactory()Lcom/amazon/ags/html5/util/WebViewFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/ags/html5/util/WebViewFactory;->newOverlayWebView(Landroid/app/Activity;)Landroid/webkit/WebView;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 49
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    const-string/jumbo v2, "overlaywebview"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p0}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addCloseOverlayListener(Lcom/amazon/ags/html5/javascript/domain/CloseOverlayListener;)V

    .line 56
    const-string/jumbo v3, "hostinterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptRepository()Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v4}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addMessageHandlerReadyListener(Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;)V

    .line 119
    invoke-interface {v3, v1}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadOverlayJavascript(Landroid/webkit/WebView;)V

    .line 121
    invoke-direct {p0, v1}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->setViewWithSize(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected error occurred while displaying overlay.  Overlay will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    sget-object v1, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ServiceFactory isn\'t ready.  Overlay will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    goto :goto_0
.end method
