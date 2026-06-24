<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>
    <style>
        .invoice-box {

            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }


        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }

        .text-right {
            text-align: right;
        }
    </style>
</head>

<body>
    <div class="invoice-box mt-4">

        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="{{ asset('upload/invoice-image/invoice-logo.png') }}"
                                    style="width: 100%; max-width: 300px" />
                            </td>

                            <td>
                                Invoice #: 00{{ $order->id }}<br />
                                {{ $order->order_date }}<br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                {{ substr($order->customer->name, 0, 10) }}<br />
                                {{ $order->customer->mobile }}<br />
                                {{ $order->delivery_address }}
                            </td>

                            <td>
                                Ogani<br />
                                John Doe<br />
                                ogani@org.gmail.com
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <table>

            <tr class="heading">

                <td style="text-align: center">#</td>
                <td style="text-align: left">Item</td>
                <td class="text-right">Quantity</td>
                <td class="text-right">Unit Price</td>
                <td class="text-right">Sub Total</td>
            </tr>
            @php($sum = 0)
            @foreach ($order->orderDetails as $orderDetail)
                <tr class="item">
                    <td style="text-align: center">{{ $loop->iteration }}</td>
                    <td style="text-align: left">{{ $orderDetail->product_name }}</td>
                    <td class="text-right">{{ $orderDetail->product_qty }}</td>
                    <td class="text-right">{{ $orderDetail->product_price }}</td>
                    <td class="text-right">{{ $subTotal = $orderDetail->product_price * $orderDetail->product_qty }}
                    </td>
                </tr>
                @php($sum = $sum + $subTotal)
            @endforeach

            <tr>
                <td style="text-align: right;" colspan="4">Tex:</td>
                <td style="text-align: right">{{ $tex = 100 }}</td>
            </tr>
            <tr>
                <td style="text-align: right;" colspan="4">Shiping Cost</td>
                <td style="text-align: right">{{ $shipingCost = round($sum * 0.15) }}</td>
            </tr>
            <tr class="heading">
                <td style="text-align: right;" colspan="4">Total:</td>
                <td style="text-align: right">BDT {{ $sum + $tex + $shipingCost }}</td>
            </tr>
        </table>
    </div>
</body>

</html>
