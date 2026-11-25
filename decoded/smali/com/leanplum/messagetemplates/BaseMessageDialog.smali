.class public Lcom/leanplum/messagetemplates/BaseMessageDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field protected a:Lcom/leanplum/messagetemplates/a;

.field protected b:Lcom/leanplum/messagetemplates/WebInterstitialOptions;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Z

.field private e:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;ZLcom/leanplum/messagetemplates/a;Lcom/leanplum/messagetemplates/WebInterstitialOptions;)V
    .locals 10

    .prologue
    .line 49
    .line 1344
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 1346
    :goto_0
    if-eqz v0, :cond_5

    .line 1347
    const v0, 0x1030011

    .line 49
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->d:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->e:Z

    .line 50
    invoke-static {p1}, Lcom/leanplum/utils/SizeUtil;->init(Landroid/content/Context;)V

    .line 51
    iput-object p3, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    .line 52
    iput-object p4, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->b:Lcom/leanplum/messagetemplates/WebInterstitialOptions;

    .line 53
    if-eqz p4, :cond_0

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->d:Z

    .line 56
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    .line 57
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 59
    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2147
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2151
    if-eqz p2, :cond_6

    .line 2152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2180
    :goto_2
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2181
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 2184
    if-eqz p2, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a(I)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2185
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_9

    .line 2187
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2192
    :goto_4
    iget-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->d:Z

    if-nez v0, :cond_c

    .line 2226
    new-instance v1, Lcom/leanplum/views/BackgroundImageView;

    invoke-direct {v1, p1, p2}, Lcom/leanplum/views/BackgroundImageView;-><init>(Landroid/content/Context;Z)V

    .line 2227
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/leanplum/views/BackgroundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2229
    if-nez p2, :cond_a

    .line 2230
    sget v0, Lcom/leanplum/utils/SizeUtil;->dp20:I

    .line 2234
    :goto_5
    iget-object v2, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v2}, Lcom/leanplum/messagetemplates/a;->getBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leanplum/views/BackgroundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2235
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 2236
    invoke-static {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a(I)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2237
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v3}, Lcom/leanplum/messagetemplates/a;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_b

    .line 2239
    invoke-virtual {v1, v2}, Lcom/leanplum/views/BackgroundImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2243
    :goto_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2245
    invoke-virtual {v1, v0}, Lcom/leanplum/views/BackgroundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2194
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2251
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2254
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2255
    const/4 v2, 0x0

    sget v3, Lcom/leanplum/utils/SizeUtil;->dp5:I

    const/4 v4, 0x0

    sget v6, Lcom/leanplum/utils/SizeUtil;->dp5:I

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2256
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2257
    iget-object v2, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v2}, Lcom/leanplum/messagetemplates/a;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    iget-object v2, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v2}, Lcom/leanplum/messagetemplates/a;->getTitleColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2259
    const/4 v2, 0x2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2260
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2261
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2263
    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2264
    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2265
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2267
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2197
    const/16 v0, 0x68

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 2198
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2314
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2315
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2317
    const/16 v3, 0xc

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2318
    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2319
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/leanplum/utils/SizeUtil;->dp5:I

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2321
    sget v3, Lcom/leanplum/utils/SizeUtil;->dp20:I

    sget v4, Lcom/leanplum/utils/SizeUtil;->dp5:I

    sget v6, Lcom/leanplum/utils/SizeUtil;->dp20:I

    sget v7, Lcom/leanplum/utils/SizeUtil;->dp5:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2322
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2323
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2324
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonTextColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2325
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2327
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->getAcceptButtonBackgroundColor()I

    move-result v0

    const/16 v3, 0x1e

    invoke-static {v2, v0, v3}, Lcom/leanplum/utils/BitmapUtil;->stateBackgroundDarkerByPercentage(Landroid/view/View;II)V

    .line 2330
    const/4 v0, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2331
    new-instance v0, Lcom/leanplum/messagetemplates/i;

    invoke-direct {v0, p0}, Lcom/leanplum/messagetemplates/i;-><init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2201
    const/16 v0, 0x69

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 2202
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3272
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3273
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3275
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3276
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3277
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3278
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->getMessageColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3279
    const/4 v0, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2205
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2207
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2209
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :goto_7
    const/16 v0, 0x6c

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 64
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->hasDismissButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4122
    :cond_1
    new-instance v0, Lcom/leanplum/views/CloseButton;

    invoke-direct {v0, p1}, Lcom/leanplum/views/CloseButton;-><init>(Landroid/content/Context;)V

    .line 4123
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/leanplum/views/CloseButton;->setId(I)V

    .line 4124
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4126
    if-eqz p2, :cond_d

    .line 4127
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4128
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4129
    const/4 v2, 0x0

    sget v3, Lcom/leanplum/utils/SizeUtil;->dp5:I

    sget v4, Lcom/leanplum/utils/SizeUtil;->dp5:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 4135
    :goto_8
    invoke-virtual {v0, v1}, Lcom/leanplum/views/CloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4136
    new-instance v1, Lcom/leanplum/messagetemplates/g;

    invoke-direct {v1, p0}, Lcom/leanplum/messagetemplates/g;-><init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/views/CloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/leanplum/views/CloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    .line 5084
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5085
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5086
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 75
    if-nez p2, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 81
    :cond_3
    return-void

    .line 1344
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1349
    :cond_5
    const v0, 0x1030010

    goto/16 :goto_1

    .line 2155
    :cond_6
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    check-cast v0, Lcom/leanplum/messagetemplates/CenterPopupOptions;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/CenterPopupOptions;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/leanplum/utils/SizeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 2156
    iget-object v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    check-cast v0, Lcom/leanplum/messagetemplates/CenterPopupOptions;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/CenterPopupOptions;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/leanplum/utils/SizeUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    .line 2159
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2160
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2161
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v3, v6, :cond_7

    .line 2162
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2166
    :goto_9
    iget v1, v0, Landroid/graphics/Point;->x:I

    sget v3, Lcom/leanplum/utils/SizeUtil;->dp20:I

    sub-int v3, v1, v3

    .line 2167
    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/leanplum/utils/SizeUtil;->dp20:I

    sub-int v1, v0, v1

    .line 2168
    int-to-double v6, v2

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 2169
    if-le v2, v3, :cond_f

    int-to-double v8, v2

    div-double/2addr v8, v6

    double-to-int v0, v8

    if-ge v0, v1, :cond_f

    .line 2171
    int-to-double v8, v3

    div-double/2addr v8, v6

    double-to-int v2, v8

    move v0, v3

    .line 2173
    :goto_a
    if-le v2, v1, :cond_e

    int-to-double v8, v2

    mul-double/2addr v8, v6

    double-to-int v4, v8

    if-ge v4, v3, :cond_e

    .line 2175
    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v0, v2

    .line 2178
    :goto_b
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v2

    goto/16 :goto_2

    .line 2164
    :cond_7
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_9

    .line 2184
    :cond_8
    sget v0, Lcom/leanplum/utils/SizeUtil;->dp20:I

    goto/16 :goto_3

    .line 2189
    :cond_9
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 2232
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 2241
    :cond_b
    invoke-virtual {v1, v2}, Lcom/leanplum/views/BackgroundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 3284
    :cond_c
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 3285
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3287
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3288
    new-instance v1, Lcom/leanplum/messagetemplates/h;

    invoke-direct {v1, p0}, Lcom/leanplum/messagetemplates/h;-><init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3309
    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->b:Lcom/leanplum/messagetemplates/WebInterstitialOptions;

    invoke-virtual {v1}, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 4131
    :cond_d
    const/4 v2, 0x6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4132
    const/4 v2, 0x7

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4133
    const/4 v2, 0x0

    sget v3, Lcom/leanplum/utils/SizeUtil;->dp7:I

    neg-int v3, v3

    sget v4, Lcom/leanplum/utils/SizeUtil;->dp7:I

    neg-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_8

    :cond_e
    move v1, v2

    goto :goto_b

    :cond_f
    move v0, v2

    move v2, v4

    goto :goto_a
.end method

.method private static a(I)Landroid/graphics/drawable/shapes/Shape;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    .line 220
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p0

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p0

    aput v2, v0, v1

    .line 221
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1
.end method

.method static synthetic a(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method static synthetic b(Lcom/leanplum/messagetemplates/BaseMessageDialog;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->e:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->e:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->e:Z

    .line 5091
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5092
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5093
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    new-instance v1, Lcom/leanplum/messagetemplates/e;

    invoke-direct {v1, p0}, Lcom/leanplum/messagetemplates/e;-><init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    iget-object v1, p0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
