import {useCallback, useState} from 'react'
import {Button, message, Table} from "antd";
import axios from "axios";

function App() {

  let [data, setData] = useState([]);
  let [isLoading, setLoading] = useState(false);
  let [isParseLoading, setParseLoading] = useState(false);

  const fetch = useCallback(async () => {

    try {
      setLoading(true)
      let response = await axios.get('http://localhost:8080/show')
      setData(response.data)
      message.success('Данные успешно загружены')
    } catch (e) {
      console.log('fetch', e)
      message.error('Произошла ошибка при загрузке')
    } finally {
      setLoading(false)
    }
  },[])

  const parse = useCallback(async () => {
    try {
      setParseLoading(true)
      await axios.get('http://localhost:8080/parse')
      message.success('Данные успешно обновленны')
    } catch (e) {
      console.log('parse', e)
      message.error('Произошла ошибка при обновлении')
    } finally {
      setParseLoading(false)
    }
  },[])

  const columns = [
    {
      title: 'id',
      dataIndex: 'id',
      key: 'id',
    },
    {
      title: 'Валюта',
      dataIndex: 'code',
      key: 'code',
    },
    {
      title: 'Значение',
      dataIndex: 'percentage',
      key: 'percentage',
    },
  ]


  return (
    <div className='main'>
      <div className='filters'>
        <Button type="primary" onClick={parse} disabled={isParseLoading}>Parse</Button>
        <Button onClick={fetch} disabled={isLoading}>Show</Button>
      </div>
      <Table dataSource={data} columns={columns} loading={isLoading || isParseLoading} className="table"/>
    </div>
  )
}

export default App
